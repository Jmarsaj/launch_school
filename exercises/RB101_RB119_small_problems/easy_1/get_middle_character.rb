def center_of(sentence)
  middle_index = sentence.length/2
  if sentence.length.even?
    sentence[middle_index-1, 2]
  else
    sentence[middle_index]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'