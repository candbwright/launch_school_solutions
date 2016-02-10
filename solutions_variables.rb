#Look at the following programs:

x = 0
3.times do
	x += 1
end
puts x

#and

y = 0
3.times do
 	y+= 1
	x = y
end
puts x

=begin
The first section of code will  print 3 to the screen, as the x is defined outside of the do/end block.
The second section of code will throw an error message as the x is defined inside of the do/end block
and is inaccessible outside of the that scope
=end
#What does the followoing error message tell you?
#NameError: undefined local variable or method for 'shoes'for main: Object
#from (irb): 3
=begin
There is a variable or method on line 3 named shoes that is out of scope or is non existent
=end