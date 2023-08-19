def calculate(num_1, num_2)
  puts "==> #{num_1} + #{num_2} = #{num_1+num_2}"
  puts "==> #{num_1} - #{num_2} = #{num_1-num_2}"
  puts "==> #{num_1} * #{num_2} = #{num_1*num_2}"
  puts "==> #{num_1} / #{num_2} = #{num_1/num_2}"
  puts "==> #{num_1} % #{num_2} = #{num_1%num_2}"
  puts "==> #{num_1} ** #{num_2} = #{num_1**num_2}"
end




puts "==> Enter the first number: "
num_1 = gets.chomp.to_i
num_2 = 0
loop do
  puts "==> Enter the second number: "
  num_2 = gets.chomp.to_i
  if num_2 == 0
    puts "==> Please do not enter 0"
  else
    break
  end
end

calculate(num_1, num_2)