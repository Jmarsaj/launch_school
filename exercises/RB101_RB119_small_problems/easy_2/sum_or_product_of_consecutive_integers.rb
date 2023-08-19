def calculate(num, operator)
  if operator == 's'
    # sum = 0
    # 1.upto(num) { |i| sum += i }
    sum = (1..num).inject(:+)
    puts "The sum of the integers between 1 and #{num} is #{sum}"

  elsif operator == 'p'
    # product = 1
    # 1.upto(num) { |i| product *= i }
    product = (1..num).inject(:*)
    puts "The product of the integers between 1 and #{num} is #{product}"

  else
    puts "Invalid operator"
  end
end

num = 0
loop do
  puts ">> Please enter an integer greater than 0:"
  num = gets.chomp.to_i
  if num <= 0
    puts ">> Please enter a valid number"
  else
    break
  end
end

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operator = gets.chomp
calculate(num, operator)