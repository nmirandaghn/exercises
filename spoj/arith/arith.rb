# input: string
# returns: string
# Steps
# 1. Find the operation sign
# 2. Split the string to find the operands
# 3. If operation is multiplication
# 4. Iterate over every number of the second number
# 5. Multiply and add to array
# 6. Print the array

def process(operation)
  op = operation.scan(/[\+\-\*]/).join
  numbers = operation.split(op)

  return if numbers.size != 2

  operand1, operand2 = numbers[0], numbers[1]
  operands = []
  ary = []

  operands.unshift(op + operand2)
  operands.unshift operand1

  alignment = if operands.first.size > operands.last.size
                operands.first.size
              else
                operands.last.size
              end

  result = eval(operation).to_s

  if op == '*'
    last_index = operand2.size - 1
    if last_index > 0
      operands << ('-' * operands.last.size)
      spaces = 0
      last_index.downto(0) do |index|
        ary << (operand2[index].to_i * operand1.to_i).to_s + (' ' * spaces)
        spaces += 1
      end
      alignment = ary.last.size if ary.last.size > alignment
      ary.push('-' * alignment)
    else
      alignment = result.size
      operands << ('-' * alignment)
    end
  else
    operands << ('-' * result.size)
  end

  operands.each { |operand| puts operand.rjust(alignment) }
  ary.each { |elem| puts elem.rjust(alignment) }
  puts result.rjust(alignment)
end

repeat = gets.chomp.to_i
repeat.times do
  p process(gets.chomp)
end
