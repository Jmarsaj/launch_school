# loan calculator 

def prompt(message)
  puts "@@ #{message}"
end

def repeat?
  prompt("Would you like to go again")
  answer = gets.chomp
  answer.downcase().start_with?('y')
end

def valid_num?(num)
  num.to_f > 0 && (num.to_f.to_s == num || num.to_i.to_s == num)
end

def get_input
  # input = ''
  loop do
    input = gets.chomp
    if valid_num?(input)
      # break
      return input
    else
      prompt("Enter a valid number")
    end
  end
  # return input
end

# MAIN

prompt("Welcome to Loan Calculator")
prompt("--------------------------")
puts

loop do
  prompt("Enter the loan amount")
  loan_amount = get_input

  prompt("Enter the Annual Percentage Rate (5 for 5% or 3.5 for 3.5%)")
  interest_rate = get_input

  prompt("Enter the loan duration in years")
  loan_duration = get_input

  loan_duration_months = loan_duration.to_i * 12

  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12

  monthly_payment = loan_amount.to_i * 
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate) ** (-loan_duration_months)))

  prompt("monthly payment: $#{monthly_payment.round(2)}")
  puts

  break unless repeat?
end

prompt("Thank you for using Loan Calculator")
prompt("-----------------------------------")