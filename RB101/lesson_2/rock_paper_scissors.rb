VALID_CHOICES = %w(rock paper scissors)

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_result(user, computer)
  if win?(user, computer)
    prompt("YOU WON")
  elsif win?(computer, user)
    prompt("YOU LOST")
  else
    prompt("ITS A TIE")
  end
end

def test_method
  prompt('test message')
end

# test_method       # ==> outputs an error

def prompt(message)
  puts "==> #{message}"
end

# test_method       # ==> test message

prompt("Welcome to Rock, Paper and Scissors")

loop do
  prompt("Choose one #{VALID_CHOICES.join(', ')}")
  user_choice = gets.chomp
  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{user_choice}, Computer chose: #{computer_choice}")
  display_result(user_choice, computer_choice)

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. GOODBYE!")
