# Exercise 1:Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each {|a| puts a}

# Exercise 2:Same as above, but only print out values greater than 5.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.select {|number| number > 5}

# Exercise 3: Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.select {|number| number.odd?

# Exercise 4: Append "11" to the end of the original array. Prepend "0" to the beginning.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr << 11
arr.unshift(0)

#Exercise 5: Get rid of "11". And append a "3".
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.pop
arr << 3

# Exercise 6: Get rid of duplicates without specifically removing any one value.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.uniq

=begin 
Exercise 7 What's the major difference between an Array and a Hash?
A hash stores items by associated keys. An array stores items by ordered index
=end 

# Exercise 8:Create a Hash using both Ruby syntax styles.
fave_food = {:chocolate => 'dark', :pizza => 'pepperoni'}
fave_food = {bread: 'biscuits', meat: 'wings'}

=begin
Exercise 9: Suppose you have a hash h = {a:1, b:2, c:3, d:4}

1. Get the value of key `:b`.---------> h [:b]

2. Add to this hash the key:value pair `{e:5}`-----------> h = [:e] = '5'

3. Remove all key:value pairs whose value is less than 3.5------>  h.delete_if { |k,v| v < 3.5}
=end

# Exercise 10: Can hash values be arrays? Can you have an array of hashes? (give examples)
# yes and yes 
hash = {}
hash = {food: ['pizza', 'chocolate', 'burgers']}
arr = [{food: 'pizza'}, {food: 'chocolate'}, {food: 'burgers'}]

=begin
Exercise 11: Look at several Rails/Ruby online API sources and say which one you like best and why.
I like the http://devdocs.io/ website. it has several API sources for multiple languages.
Its easy to get around in each and its convenient to have several sources in one location, especially if you are
working with multiple interfaces at once.
=end 

=begin
Exercise 12: Given the following data structures. Write a program that moves the information from
the array into the empty hash that applies to the correct person.
=end
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts contacts

# Exercise 13: Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

=begin
Exercise 14: In exercise 12, we manually set the contacts hash values one by one. Now, programmatically loop or
iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. 
Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be 
the Array shift and first methods. Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.
=end
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

=begin
Exercise 15: Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".
=end
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |word| word.start_with?("s") }
arr.delete_if { |word| word.start_with?("s", "w") }

=begin
Exercise 16: Take the following array:
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
and turn it into a new array that consists of strings containing one word. 
(ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods,
as well as String's split method.
=end
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |pairs| pairs.split }
a = a.flatten
p a

# Exercise 17: What will the following program output?
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

#--------> These hashes are the same
