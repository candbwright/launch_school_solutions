#Question 1 write a program that prints a greeting message, should contain a method called greeting that 
#takes a name as its parameter and returns a string
def greeting(name)
	puts "Well howdy there, #{name}!"
end

puts greeting("Christi")

#Question 2 What do the following expressions evaluate to?

x=2       #=>2
puts x=2       #=>2
p name = "Joe"             #=> "Joe"
four = "four"        #=> "four"
print something = "nothing"                #nothing =>nil

#Question 3: Write a program that includes a method called multiply that takes two arguments and
#returns the product of the two numbers

def multiply (first_number, second_number)
	first_number * second_number
end

puts multiply(6, 3)
#Question 4 What will the following code print to the screen:
def scream(words)
	words = words + "!!!!"
	return
	puts words
end

scream("Yippeee")
=begin
Nothing is printed. Why? Because we put the return keyword in the middle of the method.
When we have a return in the middle of a method, the code after the return is not executed
=end

#Question 5 Edit the method in  exercise 4 so that it does print words on the screen
#What does it return now?
def scream(words)
	words = words + "!!!!"
	puts words
end
scream ("Yippeee")
#Returns nil, because the last thing in the method is the return value and unless we put something as the
#return value is will always returns nil


#Question 6 What does the following error message tell you:
=begin
ArgumentError: wrong number of arguments (1 for 2)
	from (irb):1: in ' calculate_product'
	from (irb): 4
=end
#The error message tells me that I'm calling a method named calculate_product with only one argument when I should have two
