# Create an application that functions like an ATM.
# 1. Write out a list of features
# 2. In the list, mark each feature as 'essential' or 'nice to have'
# 3. Decide what the simplest possible version of your ATM would look like
# 4. Show Bianca or Alex and get their thoughts on whether it should be simpler
# 5. Create a new directory on your computer, initialise it as a git repo, 
# and start coding that simplest version! Remember to add and commit your code regularly, 
# including every time you get something working

puts "New card account detected. Please setup your pin to access your account."

pin = []
while pin == []
puts "Please enter a four digit pin"
new_user = gets.chomp.to_i

puts "Please re-enter your pin to confirm"
confirmation = gets.chomp.to_i

    if confirmation == new_user
        pin = [new_user]
    else 
        puts "Those didn't match, please try again."
    end
end


starting_balance = rand 99999
pin = 1234
withdraw_options = [10, 20, 50, 100]


puts "Card detected. Please enter your pin"
user_pin = 0

pin_attempts = 0
while pin_attempts < 3 && user_pin != pin
    puts "Please enter your pin"
    user_pin = gets.chomp.to_i


        pin_attempts += 1  
        if pin_attempts < 3 && user_pin != pin
            puts "Incorrect pin, please try again. #{3 - pin_attempts} attempts remaining."

            user_pin
        elsif user_pin != pin && pin_attempts == 3
            puts "Please contact your bank."
          exit
        end
    
    end

    if user_pin == pin
    puts "Correct pin! Your balance is $#{starting_balance}"
   
       attempts = 0 
       while attempts <= 1         
        puts "How much would you like to withdraw? #{withdraw_options}"
        withdraw_amount = gets.chomp.to_i
        attempts += 1 

        if withdraw_amount > starting_balance
            puts "Insufficient funds, your balance is #{starting_balance} please make another selection"

        elsif (withdraw_amount%10) == 0
            puts "Withdrawing #{withdraw_amount}"
            puts "Your balance is now $#{starting_balance -= withdraw_amount}."
            puts "Have a nice day!"
            break 
        elsif (withdraw_amount%10) != 0
                puts "ERROR! please select a multiple of 10"
        else
                puts "Please make a selection"    
            end
        

    end  
end

