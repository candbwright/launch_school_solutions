

#Exercise 2 Write a while loop that takes input from a user, performs an action, and only stops when the user 
#types "STOP". Each loop can get info from the user
x = " "
while x != "STOP" do
	puts "So, do you want to dance?"
	answer = gets. chomp
	puts "How about we ask that again?"
	x = gets.chomp
	end


#Exercise 3 Use the each_with _index method to iterate through an array of your creation that prints each index and value of the array

favorite_chocolates = ["milk", "bittersweet", "dark", "Gianduia", "white", "mint"]

favorite_chocolates.each_with_index do |chocolate, index|
	puts "#{index}. #{chocolate}"
end

#Exercise 4 Write a method that counts down to zero using
def count_down(number)
	if number <= 0
		puts number
	else
		puts number
		count_down(number -1)
	end
end

count_down(10)
count_down(30)