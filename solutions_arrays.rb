#Exercise 1: below we have given you an array and a number.  Write a program that checks to see if
#the number appears in the array
arr = [1, 3, 5, 7, 9, 11]
number = 3
arr.include?(3)

#Exercise 2: What will the following programs return? What is value of arr after each?
arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)    #------->Returns 1
                                    #value of arr is  [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

 arr = ["b", "a"]
 arr = arr.product([Array(1..3)])
 arr.first.delete(arr.first.last)   #--------->returns [1, 2, 3]
                                    #value of arr is [["b"], ["a", [1, 2, 3]]]
                                  ]

#Exercise 3: How do you print the word "Example" from the folowing array?
arr = [["test', "hello", "world"], ["example", "mem"]]
arr[1][0]

#Exercise 4: What does each method return in the following example:
arr=[15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5)  # returns =>3 which is the index value
arr.index[5]  # returns and error message NoMethodError
arr[5]        # returns =>8 which is the value of the index

#Exercise 5: What is the value of a, b, and c in the foolowing program:
string = "Welcome to America!"
a = string[6]   #------> Answer is e
a = string[11]  #------> Answer is A
a = string[19]  #------> Answer is nil

=begin
Exercise 6: You run the following code:
names=['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'
and you get the following error code: 
TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
 What is the problem and how can it be fixed?
 =end
  names=['bob', 'joe', 'susan', 'margaret']
  names[3] = 'jody' #---------.You must use an integer to set the key value of an item in an array, the key value was a string 
  
  =begin
  Write a program that iterates over an array and builds a new array that is the result of incrementing each
  value in the original array by a value of 2.  you should have 2 arrays at the end of this program, the original
  array and the new one. Print both arrays to the screen using the p method
  =end
  numbers=[1, 2, 3, 4, 5, 6]
  new_numbers=[]
  
  arr.each do |n|
    new_numbers << n + 2
  end
  
  p numbers
  p new_numbers 