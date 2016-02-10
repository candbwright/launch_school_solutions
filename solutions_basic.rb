#Exercise 1:Add two strings together that when concatenated return your first and last name as your full name
firstname = "Christianne"
lastname = "Wright"

puts firstname + lastname

#Exercise 2: Take 4 digit number and find the thousands, hundreds, tens and ones using the modulo or division operator

puts 5266 / 1000
puts 5266 % 1000 / 100
puts 5266 % 100 /10
puts 5266 %10

#Exercise 2 Write a program using a hash to store a list of movie titles with the year they came out, print out the movies to the screen
movies = {jaws: 1975, fifty_first_dates: 2004, frozen: 2013, hannibal: 2001, on_golden_pond: 1981}

puts movies [:jaws]
puts movies [:fifty_first_dates]
puts movies [:frozen]
puts movies [:hannibal]
puts movies [:on_golden_pond]

#Exercise 4: use dates from exercise 3 and store them in an array, then make your program output the same thing
dates = [1975, 2004, 2013, 2001, 1981]

puts dates [0]
puts dates [1]
puts dates [2]
puts dates [3]
puts dates [4]

#Exercise 5 Write a program outputting the factorial of the numbers 5, 6, 7 and 8.

puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

#Exercise 6 Write a program calculating the squares of three float numbers putputting the result to the screen

puts 6.25 * 6.25
puts 0.456 * 0.456
puts 204.12 * 204.12

#Exercise 7 What does the error message tell you?
=begin
The error message shows that there is an error on line 2  and that  the code has an ending parentheses where
an ending curly brace should be.
=end
