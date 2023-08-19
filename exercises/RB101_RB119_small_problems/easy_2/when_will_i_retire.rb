def years_to_retire(current_age, age_to_retire)
  current_year = Time.now.year
  years_left = age_to_retire - current_age
  retirement_year = current_year + years_left

  puts "It's #{current_year}. You will retire in #{retirement_year}"
  puts "You have only #{years_left} years of work to go!"
end

print "What is your age? "
current_age = gets.chomp.to_i
print "At what age would you like to retire? "
age_to_retire = gets.chomp.to_i

years_to_retire(current_age, age_to_retire)