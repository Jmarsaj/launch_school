def triangle(num, right_angle='b_r')
=begin
  #MY SOL
  line = "#{' ' * (num-1)}*"
  num.times do |index|
    puts line[index..line.length]
    line << '*'
  end
=end

=begin
  # LAUNCH SCHOOL SOL
    spaces = num - 1
    stars = 1

    num.times do
      puts (' ' * spaces) + ('*' * stars)
      spaces -= 1
      stars += 1
    end
=end

  case right_angle
  when 'b_r'
    spaces = num - 1
    stars = 1

    num.times do
      puts (' ' * spaces) + ('*' * stars)
      spaces -= 1
      stars += 1
    end

  when 't_r'
    spaces = 0
    stars = num

    num.times do
      puts (' ' * spaces) + ('*' * stars)
      spaces += 1
      stars -= 1
    end

  when 'b_l'
    spaces = num - 1
    stars = 1

    num.times do
      puts ('*' * stars) + (' ' * spaces)
      spaces -= 1
      stars += 1
    end

  when 't_l'
    spaces = 0
    stars = num

    num.times do
      puts ('*' * stars) + (' ' * spaces)
      spaces += 1
      stars -= 1
    end
  end #switch loop end
end

triangle(9, 'b_r')    # bottom right
triangle(9, 't_r')    # top right
triangle(9, 'b_l')    # bottom left
triangle(9, 't_l')    # top left