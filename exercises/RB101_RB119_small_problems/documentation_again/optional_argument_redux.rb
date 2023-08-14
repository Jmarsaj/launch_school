require 'date'

=begin
Date.civil is the same as Date.new
Date.new returns a new Date object constructed fron the giver arguments
new(year = -4712, month = 1, mday = 1, start = Date::ITALY) → date [optional arguments]
=end

puts Date.civil                   # => "-4712-01-01"
puts Date.civil(2016)             # => "2016-01-01"
puts Date.civil(2016, 5)          # => "2016-05-01"
puts Date.civil(2016, 5, 13)      # => "2016-05-13"