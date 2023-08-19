def print_in_box(text)
=begin
  #MY SOL
  line_1 = '+-'
  line_2 = '| '
  text.length.times do
    line_1 << '-'
    line_2 << ' '
  end
  line_1 << '-+'
  line_2 << ' |'

  text.insert(0, '| ')
  text << ' |'

  puts line_1
  puts line_2
  puts text
  puts line_2
  puts line_1
=end

  #BETTER SOLS

#FIRST OPTIONAL CHALLENGE
=begin
  size = text.size
  if size > 76
    size = 76
    text.chop! until text.size == 76
  end

  line_1 = "+#{'-' * (size + 2)}+"
  line_2 = "|#{' ' * (size + 2)}|"

  puts line_1
  puts line_2
  puts "| #{text} |"
  puts line_2
  puts line_1
=end

  #SECOND OPTIONAL CHALLENGE
  size = text.size
  size = 76 if size > 76

  line_1 = "+#{'-' * (size + 2)}+"
  line_2 = "|#{' ' * (size + 2)}|"

  text.insert(0, '| ')
  counter = 78
  while counter < text.size
    text.insert(counter, " |\n| ")
    counter += 81
  end

  last = counter - text.size
  text << "#{' ' * (last+1)}|"

  
  puts line_1
  puts line_2
  puts text
  puts line_2
  puts line_1

end

print_in_box("Use the form below to add your solution or analysis for this exercise. You can include a link to a gist or pastebin, or write your entire solution right here. Make sure to use proper formatting so your code shows up correctly and preview your code first. You may include some commentary about your code and the tradeoffs you took, or some analysis about this exercise and its solutions. Make sure your solution fulfills all of the provided examples, if any, and doesn't contain any obvious errors.")