# Let's create a function
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man, that's enough for a party!"
  puts "Gets a blanket.\n"
end

# Call the function with hardcoded numbers
puts "We can just give the function numbers directly."
cheese_and_crackers(20, 30)

# Call the function with local variables
puts "OR, we can use variables from our script: "
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# Call the function with calculations
puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

# Call the function with more calculations
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 10, amount_of_crackers + 1000 )

