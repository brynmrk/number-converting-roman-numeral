print "Convertion to Roman Numeral from Whole Number\nEnter the number to be converted: "
number = Integer(gets) rescue false
while !number                                       #loop until entered number is integer
  print "Enter the number to be converted: "
  number = Integer(gets) rescue false
end

# Possible combinations in roman numeral
roman_converter = [["I", 1], ["IV", 4], ["V", 5], ["IX", 9], ["X", 10], ["XL", 40], \
                  ["L", 50], ["XC", 90], ["C", 100], ["CD", 400], ["D", 500], \
                  ["CM", 900], ["M", 1_000]].reverse

roman_number = []
roman_converter.each do |value|     #value is the array that contains the roman numeral and it's value in integer
  while number-value[1] >= 0        #loop check if number is greater than or equal
    number = number - value[1]      #subtract the value of roman numeral
    roman_number.push(value[0])     #push the roman numeral to the array
  end
end

puts roman_number.join('')          #print the array, joining each value
