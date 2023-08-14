=begin
fetch(index) → elementclick to toggle source
fetch(index, default_value) → element
fetch(index) {|index| ... } → element
Returns the element at offset index.
=end

a = %w(a b c d e)
puts a.fetch(7)                         # => Error: Array out of bounds
puts a.fetch(7, 'beats me')             # => beats me       (bcuz prints default val since index out of bounds)
puts a.fetch(7) { |index| index**2 }    # => 49