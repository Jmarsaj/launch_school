def prompt(message)
  puts "@@ #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operator_to_word(operator)
  case operator
  when '1' then 'Adding'
  when '2' then 'Subtracting'
  when '3' then 'Multiplying'
  when '4' then 'Dividing'
  end
end

prompt("Welcome to Calculator! Enter name")

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt("Not a valid name")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do
  number1 = ''
  loop do
    prompt("Enter first number")
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt("Not a vaild number")
    end
  end

  number2 = ''
  loop do
    prompt("Enter second number")
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt("Not a vaild number")
    end
  end

  operator_prompt = <<-MSG
  Which operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)
  operator = ''

  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Enter 1, 2, 3 or 4")
    end
  end

  prompt("#{operator_to_word(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("The result is #{result}")
  prompt("Enter Y to perform another calculation")
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end
prompt("GOODBYE \n")
