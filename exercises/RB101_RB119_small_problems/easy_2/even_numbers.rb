# SOL 1
=begin
(1...100).each do |num|
  puts num if num % 2 == 0
end
=end

#SOL 2
=begin
value = 2
while value < 99
  puts value
  value += 2
end
=end

1.upto(99) do |num|
  puts num if num.even?
end