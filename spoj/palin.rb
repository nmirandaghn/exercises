#PALIN - The Next Palindrome
#ad-hoc-1
#
#A positive integer is called a palindrome if its representation in the decimal system is the same when read from left to right and from right to left. For a given positive integer K of not more than 1000000 digits, write the value of the smallest palindrome larger than K to output. Numbers are always displayed without leading zeros.
#Input
#
#The part line contains integer t, the number of test cases. Integers K are given in the next t lines.
#Output
#
#For each K, output the smallest palindrome larger than K.
#Example
#
#Input:
#2
#808
#2133
#
#Output:
#818
#2222

def palindrome(number)
  if number.size == number.count('9')
    '1' + ( '0' * (number.size - 1) )  + '1'
  else
    half = number.size / 2
    part = number[0..(half - 1)]
    if number.size.even?
      result = part + part.reverse
      result > number ? result : part.next! + part.reverse
    else
      middle = number[half]
      result = part + middle + part.reverse

      if result > number
        result
      else
        palindrome(number.next)
      end
    end
  end
end

repeat = gets.chomp.to_i

repeat.times do
  puts palindrome(gets.chomp)
end

