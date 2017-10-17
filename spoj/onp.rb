#Input:
#  3
#(a+(b*c))
#((a+b)*(z+x))
#((a+t)*((b+(a+c))^(c+d)))
#
#Output:
#  abc*+
#  ab+zx+*
#  at+bac++cd+^*

def transform_onp(expression)
  signs = %w(+ - * / ^)
  stack = []
  result = ''
  expression.chars.each do |char|
    next if char == '('

    if char == ')'
      result << stack.pop
    elsif signs.include?(char)
      stack << char
    else
      result << char
    end
  end
  result
end

repeat = gets.chomp.to_i

repeat.times do
  input = gets.chomp
  puts transform_onp(input)
end
