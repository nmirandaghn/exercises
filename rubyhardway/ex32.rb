the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# This first kind of for-loops goes through a list
# in a more traditional style found in other languages

for number in the_count
  puts "This is count #{number}"
end

# Same as above, but in a more Ruby style
# this and the next are the preferred
# way Ruby for-loops are written
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# Also we can go through mixed lists too
# note this is yet another style, exactly like above
# but a different syntax (way to write)
change.each { |i| puts "I got #{i}"}

# We can build lists, first start with an empty one
elements = []

# Then use the range operator
(0..5).each do |i|
  puts "Adding #{i} to the list."
  # Push the i variable on the *end* of the list
  elements.push(i)
end

# Now we can print them out
elements.each { |i| puts "Element was: #{i}"}

