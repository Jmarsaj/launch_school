name = 'Bob'
save_name = name
name.upcase!
puts name, save_name    # >> BOB BOB

# save_name will also be updated because assignment in ruby assigns a reference to a variable