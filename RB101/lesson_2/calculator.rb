require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts "@@ #{message}"
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
            when '1' then 'Adding'
            when '2' then 'Subtracting'
            when '3' then 'Multiplying'
            when '4' then 'Dividing'
            end

  message
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt(MESSAGES['greeting'] + name + "!")

loop do
  number1 = ''
  loop do
    prompt(MESSAGES['first_number'])
    number1 = gets.chomp

    if valid_number?(number1)
      number1 = valid_number?(number1)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['second_number'])
    number2 = gets.chomp

    if valid_number?(number2)
      number2 = valid_number?(number2)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  prompt(MESSAGES['operator_prompt'])
  operator = ''

  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['valid_operator'])
    end
  end

  prompt(operator_to_message(operator) + MESSAGES['operation_message'])

  result = case operator
           when '1'
             number1 + number2
           when '2'
             number1 - number2
           when '3'
             number1 * number2
           when '4'
             number1.to_f / number2.to_f
           end

  prompt(MESSAGES['result'] + "#{result.round(3)}")
  prompt(MESSAGES['another_one'])
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end
prompt(MESSAGES['end'])
