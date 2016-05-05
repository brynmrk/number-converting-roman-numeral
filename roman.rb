# Problem: Convert whole numbers to roman numerals
#          that has more than 3 digit numbers
#
# Solution: Declare an array that contains the possible
#           combinations of numbers when converted to roman
#           numerals. Iterate the number to the array, if
#           it is greater than or equal subtract it then push
#           it into another array that will print the output of
#           the convertion, then repeat the loop until the number is 0.

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
while number != 0                                   #loop until number is 0
  roman_converter.each_with_index do |key, index|   #key is the array that contains the roman numeral and it's value in integer, index is the offset of the array
    if number >= roman_converter[index][1].to_i     #check if number is greater than or equal
      number -= roman_converter[index][1].to_i      #subtract the value of roman numeral
      roman_number.push(roman_converter[index][0])  #push the roman numeral to the array
      break                                         #break to reset the loop of the combinations in roman numeral
    end
  end
end

puts roman_number.join('')                          #print the array, joining each value
