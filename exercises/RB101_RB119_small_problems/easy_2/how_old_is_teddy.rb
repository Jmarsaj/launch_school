def print_name_and_age(name='Teddy')
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

print "Enter your name: "
name = gets.chomp
if name.empty?
  print_name_and_age()
else
  print_name_and_age(name)
end