# Take the filename from the parameter
filename = ARGV.first

# Make some warnings
puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (C)."
puts "If you do want that, hit RETURN."

# Confirm or cancel
$stdin.gets

# Open the file
puts "Opening the file..."
target = open(filename, "w")

# Emptying the file
puts "Truncating the file. Good bye!"
target.truncate(0)

# Enter data
puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

# Record
target.write("#{line1}\n#{line2}\n#{line3}")

puts "And finally, we close it."
target.close

