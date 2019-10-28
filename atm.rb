# Create an application that functions like an ATM.
# 1. Write out a list of features
# 2. In the list, mark each feature as 'essential' or 'nice to have'
# 3. Decide what the simplest possible version of your ATM would look like
# 4. Show Bianca or Alex and get their thoughts on whether it should be simpler
# 5. Create a new directory on your computer, initialise it as a git repo, 
# and start coding that simplest version! Remember to add and commit your code regularly, 
# including every time you get something working

############### USER PIN CREATION ###############

puts "New card account detected."

pin = 0
while pin == 0
    puts "Please create a four digit pin"
    new_user = gets.chomp.to_i

    if new_user.between? 1000, 9999
        pin = new_user
    else 
        puts "Invalid. Please try again."
    end
end

#################### ATM ####################

starting_balance = rand 99999
withdraw_options = [10, 20, 50, 100]

puts "Pin setup complete. Please enter your new pin to access your account"

pin_attempts = 0
while pin_attempts <= 2
auth = gets.chomp.to_i
pin_attempts += 1
    
if auth == pin
    puts "Correct pin! Your balance is $#{starting_balance}"
        
    actions = 0 
    while actions <= 2         
        puts "How much would you like to withdraw? Notes available are #{withdraw_options}"
        withdraw_amount = gets.chomp.to_i 
        actions += 1
            
        if withdraw_amount > starting_balance
            puts "Insufficient funds, your balance is #{starting_balance}."
        elsif (withdraw_amount%10) == 0
            puts "Withdrawing $#{withdraw_amount}"
            puts "Your balance is now $#{starting_balance -= withdraw_amount}."
            puts "Have a nice day!"
            exit 
        else
            puts "ERROR! please select a multiple of $10"    
        end
    end
    
elsif auth != pin
    puts "Incorrect. Please re-enter your pin. #{3 - pin_attempts} attempts remaining."

else 
    exit
    end    
 end

