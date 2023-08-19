array = []
puts "==> Enter the 1st number:"
array << gets.chomp.to_i
puts "==> Enter the 2nd number:"
array << gets.chomp.to_i
puts "==> Enter the 3rd number:"
array << gets.chomp.to_i
puts "==> Enter the 4th number:"
array << gets.chomp.to_i
puts "==> Enter the 5th number:"
array << gets.chomp.to_i
puts "==> Enter the last number: "
number = gets.chomp.to_i

if array.include? number
  puts "The number #{number} appears in #{array}"
else
  puts "The number #{number} does not appear in #{array}"
end