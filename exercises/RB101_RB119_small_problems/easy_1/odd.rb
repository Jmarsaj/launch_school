def is_odd?(num)
  # Sol_1
  # simpler: num % 2 == 1    (return true if num is odd)

  # Sol_2
  # return false if num % 2 == 0
  # return true

  #Sol_3
  num *= -1 if num < 0
  num.remainder(2) == 1

end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

=begin
If you weren't certain whether % were the modulo or remainder operator, 
how would you rewrite #is_odd? so it worked regardless?
  
num *= -1 if num < 0   (this will turn the negative number positive)
=end