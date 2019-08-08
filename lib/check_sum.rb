# Ask user for credit card number
puts "Input credit card number for which check sum digit is to be calculated."
card_number = gets.chomp

until card_number.to_i.to_s == card_number
    puts "Please input only numeric characters."
    card_number = gets.chomp
end

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
    if (num_digits - index) % 2 != 0

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

# Create an array of digits 0 through 9
x = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
check_digit = nil

# Iterate over array of digits until sum + digit is divisible by 10
x.each_with_index do |i|
    if (sum + i) % 10 == 0
        check_digit = i
        break
    end
end

# Return the check sum digit of the credit card
puts "The check sum digit is #{check_digit}."
puts "Your valid credit card number is #{card_number + check_digit.to_s}."
