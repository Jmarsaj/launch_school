def calculate_tip_and_total(bill, tip_rate)
  tip = bill * (tip_rate/100)
  total = bill + tip
  puts "The tip is $%0.2f" % [tip]
  puts "The total is $%0.2f" % [total]
end

print "What is the bill? "
bill = gets.chomp.to_f
print "What is the tip percentage? "
tip_rate = gets.chomp.to_f
puts

calculate_tip_and_total(bill, tip_rate)