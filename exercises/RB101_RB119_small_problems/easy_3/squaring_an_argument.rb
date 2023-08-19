require_relative 'multiplying_two_numbers'

def power_to_n(num, power)
  #multiply(num, num)
  result = 1
  power.times do
    result *= multiply(num, 1)
  end
  result
end

puts power_to_n(2, 3)