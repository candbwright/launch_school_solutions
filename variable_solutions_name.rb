#Question 1: Write a program called name.rb asking the user to type in their name and then prints
#out a greeting message with their name included

puts "Please type in your name. "
name = gets.chomp
puts "Hello " + name

# Question 3 Add another section that prints out the name of the use 10 times without using the puts method 10 times
10. times do
	puts name
end

#Question 4: Modify the program so it firsts asks the user for their first name, saves it into a variable then the last name
#and then outputs their full name all at once
puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Your full name is "+first_name+" "+last_name