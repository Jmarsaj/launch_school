# SOL 1
=begin
(1...100).each do |num|
  puts num if num % 2 == 1
end
=end

#SOL 2
=begin
value = 1
while value <= 99
  puts value
  value += 2
end
=end

1.upto(99) do |num|
  puts num if num.odd?
end