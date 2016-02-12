#Write down whether the following expressions return true or false. Type in irb to see th eresults
(32 * 4) >= 129  #false
false != !true  #false
true == 4   #false
false ==(847 == '874')    #true
(!true || (!(100/5) == 20) || ((328/4) == 82)) || false   #true

#Write a method that takes a sring as an argument. The method should return the all caps versionof the 
#string only if the string is longer than 10 characters.

def talk(string)
	if string.length >10
		string.upcase
	else
		string
	end
end
puts talk("Well, howdy ya'll!")
puts talk("Howdy!")

#Write a program that takes a number from the user between 0 and 100 and reports back whether the number
#is between 0 and 50, 51 and 100, or above 100.

puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

if number < 0
	puts "You can't enter a negative number."
elsif number <= 50
	puts "#{number} is between 0 and 50."
elsif number <= 100
	puts "#{number} is between 51 and 100."
else
	puts "#{number} is too high."
end

#Rewrite your program from exercise 3 using a case statement. Wrap each statement in a method and make sure
#they both still work
def evaluate_num(number)     #--------->our new method definition

 	if number < 0
		puts "You can't enter a negative number."
	elsif number <= 50
		puts "#{number} is between 0 and 50."
	elsif number <= 100
		puts "#{number} is between 51 and 100."
	else
		puts "#{number} is too high."
	end
end

puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i                    #-------->number is saved to a variable, number given by useer will be converted to an integer

evaluate_num(number)           #------------->our new method call, number is then passed to the evaluate_num method

def evaluate_case_num(number)

	case               #-------------------->There is no argument passed to the case 
	when number < 0                     #------->Similar to the if statements
	puts "You can't enter a negative number."
	when number <= 50
		puts "#{number} is between 0 and 50."
	when number <= 100
		puts "#{number} is between 51 and 100."
	else
		puts "#{number} is too high."
	end
end

puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i                    #-------->number is saved to a variable, number given by useer will be converted to an integer

evaluate_num(number)           #------------->our new method call, number is then passed to the evaluate_num method

#Exercise 6. When you run the following code...you get an error message. Why and how do you fix it
def equal_to_four(x)
      if x == 4
        puts "yup"
      else
        puts "nope"
    end           #----------------------------->We forgot to close our method with an end
end

    equal_to_four(5)