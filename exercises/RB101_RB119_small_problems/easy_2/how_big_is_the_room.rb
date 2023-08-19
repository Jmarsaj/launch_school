SQFEET_TO_SQMETER = 10.7639
SQMETER_TO_SQINCHES = 0.00064516
SQINCHES_TO_SQCM = 6.4516

def print_area(length, width)
  square_feet = (length * width).round(2)
  square_meter = (square_feet / SQFEET_TO_SQMETER).round(2)
  square_inches = (square_meter / SQMETER_TO_SQINCHES).round(2)
  square_centimeters = (square_inches * SQINCHES_TO_SQCM)

  puts "The area of the room is #{square_feet} square feet 
        (#{square_meter} square meter)
        (#{square_inches} square inches) 
        (#{square_centimeters} square centimeters)."
end

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f
puts "Enter the width of the room in feet:"
width = gets.chomp.to_f
print_area(length, width)