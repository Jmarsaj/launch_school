# 1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

=begin

arr.each { |num| print num }
puts

# 2. Same as above, but only print out values greater than 5.

arr.each do |num|
  if num > 5
    print num
  end
end
puts

# 3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array

new_arr = arr.select { |num| num % 2 != 0 }
print new_arr
puts

# 4. Append 11 to the end of the original array. Prepend 0 to the beginning.

arr << 11
arr.unshift(0)
print arr
puts

# 5. Get rid of 11. And append a 3

arr.pop()
arr.push(3)
print arr
puts

# 6. Get rid of duplicates without specifically removing any one value.

print arr.uniq
puts

# 7. What's the major difference between an Array and a Hash?

# A: Hash contains a key-value pair and the value can be acessed by the key

# 8. Create a Hash, with one key-value pair, using both Ruby syntax styles.

hash_1 = {:dog => "woof"}
hash_2 = {cat: "meow"}


# 9. Suppose you have a hash h = {a:1, b:2, c:3, d:4}

#    Get the value of key `:b`.
#    Add to this hash the key:value pair `{e:5}`
#    Remove all key:value pairs whose value is less than 3.5


h = {a: 1, b: 2, c: 3, d: 4}

puts h[:b]

h[:e] = 5
puts h[:e]

h.delete_if { |k, v| v < 3.5}
puts h

# 10. Can hash values be arrays? Can you have an array of hashes? (give examples)

hash_3 = {animals: ["dog", "cat", "cow"]}
arr = [{dog: "woof"}, {cat: "meow"}, {cow: "moo"}]

# 11. Given the following data structures, write a program that copies the 
#     information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

i = 0
contacts.each do |k, v|
  j = 0
  contacts[k][:email] = contact_data[i][j]
  j += 1
  contacts[k][:address] = contact_data[i][j]
  j += 1
  contacts[k][:phone] = contact_data[i][j]
  i+=1
end

print contacts

# 12. Using the hash you created from the previous exercise, demonstrate 
# how you would access Joe's email and Sally's phone number.

puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

# 13. Use Ruby's Array method delete_if and String method start_with? to delete all of the
# strings that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |item| item.start_with?("s") }

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |item| item.start_with?("s", "w") }
print arr

# 14. Take the following array and turn it into a new array that consists of strings containing 
# one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map
# and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

new_a = a.map { |item| item.split }
new_a.flatten!
print new_a
=end
# 16. Same as 11 but automate it better

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end
puts contacts