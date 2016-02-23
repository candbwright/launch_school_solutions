=begin
Exercise 1: Write a program that checks if the sequence of characters "lab" exists in the following strings.
If it does, print out the word- "laboratory" - "experiment" - "elaborate" - "polar bear" - "Pans Labyrinth"
=end
def has_lab?(string)
    if string =~ /lab/
        puts string
    else
        puts "No match here!"
    end
end

has_lab?("laboratory")
has_lab?("experiment")
has_lab?("elaborate")
has_lab?("polar bear")
has_lab?("Pans labyrinth")

#Exercise 2: What will the following program print to the screen? What will it return?
def execute(&block)
    block
end

execute {puts "Hello from inside the execute method!"}
#Nothing is being printed to the screen because we need to execute the .call method within the definition
#THis returns a proc object

# Exercise 3:What is exception handling and what problem does it solve?
=begin
Exception handling is a specific process that deals with errors n a way thats manageable and predictable.
Its how a program recovers from unexpected and expected errors.  It solves the unpredictability of
program failure that will occur.  Exception handling will tell your program how to keep going when
things go wrong.
=end

# Exercise 4: Modify the code in exercise 2 to make the block execute properly.
def execute(&block)
    block.call
end

execute {puts "Hello from inside the execute mehtod!"}

=begin
Exercise 5: The code example gives us the error message because we are missing the (&) in the parameter