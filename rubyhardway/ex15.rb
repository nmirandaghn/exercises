# Let's read the file from parameter
filename = ARGV.first

# Open the file
txt = open(filename)

# Output the content
puts "Here's your file #{filename}"
print txt.read
txt.close

# Start again
print "Type the filename again: "
file_again = $stdin.gets.chomp

# Output again
txt_again = open(file_again)
print txt_again.read
txt_again.close

