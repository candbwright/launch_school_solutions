=begin
Exercise 1: Given a hash of family members, with keys as the title and an array of 
names as the values, use Ruby's built-in select method to gather only
immediate family members' names into a new array.
=end
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
imm_family.select do |k,v|
    k == :sisters || k == : brothers
end

arr = imm_family.values.flatten

=begin
Exercise 2: Look at Ruby's merge method. Notice that it has two versions.
What is the difference between merge and merge!? Write a program that uses 
both and illustrate the differences.
=end
food = {fave_kind: "pizza"}
drink = {fave_flavor: "strawberry"}
puts food.merge(drink) #--------> the food and drink hashes will be merged 
puts food   #-------> original hash unmodified
puts drink  #-------> original hash unmodified

puts food.merge!(drink) #------->the food and drink hashes will be merged
puts food   #------->original hash is now modified. The original object that was called is now modified
puts drink  #------->original hash is not modified


=begin
Exercise 3: Using some of Ruby's built-in Hash methods, write a program that 
loops through a hash and prints all of the keys. Then write a program that does
the same thing except printing the values. Finally, write a program that prints both
=end
favorites = { :food => "pizza", :drink => "root_beer", :movie => "the matrix", :color => "black"}
favorites.each_key{|key| puts key}
favorites.each_value{|value| puts value}

favorites.each do |key, value|
    puts "My favorite #{key} is #{value}"
end

#Exercise 4: Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'Web developer', hobby: 'coding'}
person[:name]

=begin
Exercise 5: What method could you use to find our if a hash contains a specific value in it?
Write a program to demonstrate this use.
=end
has_value?

if favorites.has_value?("root_beer")
  puts "Enjoy!"
else
  puts "Not in this hash!"
end

# Exercise 6:Given an array, write a program that prints out groups of words that are anagrams.
words = ['demo, 'none, 'tied', 'evil', 'dome', 'mode', 'live',
         'fowl', 'viel', 'wolf', 'diet', 'vile', 'edit', 'tied',
         'flow', 'neon']
anagrams = {}

words.each do |word|
  key = word.split('').sort.join
  if anagrams.has_key?(key)
    anagrams[key].push(word)
  else
    anagrams[key] = [word]
  end
end

anagrams.each do |k, v|
  puts "------"
  p v
end

#Exercise 7: What's the difference between the two hashes that were created, given the following code...

x = "hi there"
my_hash = {x: "some value"} #--------> the colon means that we are using a symbol x for a key

my_hash2 = {x => "some value"}  #----------->the key is the variable x( which is "hi there")

=begin
Exercise 8:If you see this error, what do you suspect is the most likely problem?

NoMethodError: undefined method `keys' for Array
A. We're missing keys in an array variable.

B. There is no method called keys for Array objects.

C. keys is an Array object, but it hasn't been defined yet.

D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist. 

Answer is B
=end


