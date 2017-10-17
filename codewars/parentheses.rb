def valid_parentheses(string)
  string.chars.each_with_object([]) { |char, parentheses|
    if char == '('
      parentheses << char
    elsif char == ')'
      parentheses.last == '(' ? parentheses.pop : parentheses << char
    end
  }.count == 0
end

p valid_parentheses('    (')
p valid_parentheses('()')
p valid_parentheses(')(()')
p valid_parentheses('(((((((())))))))')
p valid_parentheses(')')
p valid_parentheses(')test')
p valid_parentheses('')
p valid_parentheses('hi())(')
p valid_parentheses('hi(hi)()')
