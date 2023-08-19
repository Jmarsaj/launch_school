def stringy(num, start_with=1)
  result = ''
  num.times do |index|
    if start_with == 0
      number = index.odd? ? '1' : '0'
    else
      number = index.even? ? '1' : '0'
    end
    result << number
  end
  result
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'