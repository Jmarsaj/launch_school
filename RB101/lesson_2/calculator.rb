require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'   # Available languages 'en', 'fr'

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
    num.to_i
  elsif float?(num)
    num.to_f
  else
    false
  end
end

def operator_to_message(operator)
  message = case operator
            when '1' then 'added...'
            when '2' then 'subtracted...'
            when '3' then 'multiplied...'
            when '4' then 'divided...'
            end
end

def get_name
  name = ''
  loop do
    name = gets.chomp

    if name.strip.empty?
      prompt('valid_name')
    else
      name.capitalize!
      break
    end
  end
  prompt('greeting', "#{name}!")
  name
end

def get_numbers
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
  return number1, number2
end

def get_operator
  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('valid_operator')
    end
  end
  operator
end

def calculate(operator, number1, number2)
  case operator
           when '1' then number1 + number2
           when '2' then number1 - number2
           when '3' then number1 * number2
           when '4' then number1.to_f / number2.to_f
           end
end

def repeat?
  prompt('another_one')
  answer = gets.chomp
  answer.downcase().start_with?('y')
end

# MAIN

prompt('welcome')
name = get_name

loop do
  number1, number2 = get_numbers

  prompt('operator_prompt')
  operator = get_operator

  prompt('operation_message', operator_to_message(operator))

  result = calculate(operator, number1, number2)

  prompt('result', result.round(3).to_s)

  break unless repeat?
end

prompt('end', "#{name}!")