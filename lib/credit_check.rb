# Card number string
card_number = "5541808923795240"

# Determine the number of digits in the card number
num_digits = card_number.length

# Turn string into an array and initialize a sum variable
arr = card_number.split('')
sum = 0

# Iterate over each digit
arr.each_with_index do |digit, index|

    # Change digit from string to integer
    dig = digit.to_i

    # If even numbered index, multiply digit by two
    if index % 2 == 0

        # If double < 10, add double to sum
        if dig * 2 < 10
            sum += dig * 2

        # If double > 10, split doubled digits and add to sum
        else
            sum += (dig - 5) * 2 + 1
        end

    # If odd numbered index, add digit to sum
    else
        sum += dig
    end
end

# Output

## If it is valid, print "The number [card number] is valid!"
if sum % 10 == 0
    puts "The number #{card_number} is valid!"

## If it is invalid, print "The number [card number] is invalid!"
else
    puts "The number #{card_number} is invalid!"
end
