require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'fr'

def prompt(key, extra='')
  message = MESSAGES[LANGUAGE][key]
  puts "@@ #{message}" + extra
end

def float?(num)
  num.to_f.to_s == num
end

def integer?(num)
  # num.to_i != 0 || num == '0'
  num.to_i.to_s == num
end

def valid_number?(num)
  # integer?(num) || float?(num)
  if integer?(num)
    return num.to_i
  elsif float?(num)
    return num.to_f
  else
    return false
  end
end

def operator_to_message(operator)
  message = case operator
            when '1' then 'added...'
            when '2' then 'subtracted...'
            when '3' then 'multiplied...'
            when '4' then 'divided...'
            end

  message
end

prompt('welcome')

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt('valid_name')
  else
    break
  end
end

prompt('greeting', "#{name}!")

loop do
  number1 = ''
  loop do
    prompt('first_number')
    number1 = gets.chomp

    if valid_number?(number1)
      number1 = valid_number?(number1)
      break
    else
      prompt('valid_number')
    end
  end

  number2 = ''
  loop do
    prompt('second_number')
    number2 = gets.chomp

    if valid_number?(number2)
      number2 = valid_number?(number2)
      break
    else
      prompt('valid_number')
    end
  end

  prompt('operator_prompt')
  operator = ''

  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('valid_operator')
    end
  end

  prompt('operation_message', operator_to_message(operator))

  result = case operator
           when '1' then number1 + number2
           when '2' then number1 - number2
           when '3' then number1 * number2
           when '4' then number1.to_f / number2.to_f
           end

  prompt('result', "#{result.round(3)}")
  prompt('another_one')
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end
prompt('end')
