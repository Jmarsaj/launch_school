print "Please write a word or multple words: "
sentence = gets.chomp

num_of_characters = sentence.gsub(' ', '').length
# num_of_characters = sentence.delete(' ').size
puts "There are #{num_of_characters} charaters in \"#{sentence}\"."