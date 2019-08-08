# Include credit card class
require './lib/credit_card'

# Ask user for credit card number
puts "What credit card number would you like to check?"
card_number = gets.chomp

until card_number.to_i.to_s == card_number
    puts "Please input only numeric characters."
    card_number = gets.chomp
end

# Initialize a new instance of CreditCard class
credit_card = CreditCard.new(card_number, 1000)

# Output if credit card number is valid or not
if credit_card.is_valid? == true
    puts "This credit card number is valid!"
else
    puts "This credit card number is NOT valid."
end
