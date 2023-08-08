def prompt(message)
  puts "@@ #{message}"
end


prompt("Welcome to Calculator")

prompt("Enter first number: ")
number1 = gets.chomp
prompt("Enter second number: ")
number2  =gets.chomp

prompt("Enter the desired operation (add-1, subtract-2, multiply-3, divide-4): ")
operator = gets.chomp

if operator == '1'
  result = number1.to_i + number2.to_i
elsif operator == '2'
  result = number1.to_i - number2.to_i
elsif operator == '3'
  result = number1.to_i * number2.to_i
else
  result = number1.to_f / number2.to_f
end

prompt("The result is #{result}") 