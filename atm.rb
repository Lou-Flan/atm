# Create an application that functions like an ATM.
# 1. Write out a list of features
# 2. In the list, mark each feature as 'essential' or 'nice to have'
# 3. Decide what the simplest possible version of your ATM would look like
# 4. Show Bianca or Alex and get their thoughts on whether it should be simpler
# 5. Create a new directory on your computer, initialise it as a git repo, 
# and start coding that simplest version! Remember to add and commit your code regularly, 
# including every time you get something working

#Essential
# Balance
# Withdraw

#Bonus
# User id
# pin

starting_balance = 9999
pin = 1234

#withdraw_options = [10, 20, 50]

puts "Hello user. Please enter your pin"
user_pin = gets.chomp.to_i

if user_pin != pin
    puts "Please try again"
elsif user_pin == pin
    puts "Hello! Your balance is #{starting_balance}"
    puts "How much would you like to withdraw?"
    withdraw_amount = gets.chomp.to_i

        if withdraw_amount <= starting_balance
            puts "Here is #{withdraw_amount}. You new balance is #{starting_balance - withdraw_amount}"
        elsif withdraw_amount > starting_balance
            puts "insufficient funds"
        else
            puts "Please try again"
    end
end
