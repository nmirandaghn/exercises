def middle_permutation(string)
  result = string.chars.sort.permutation.map(&:join)
  result[result.size / 2 - 1]
end

p middle_permutation("abc") #== "bac"
p middle_permutation("abcd") #== "bdca"
p middle_permutation("abcdx") #== "cbxda"
p middle_permutation("abcdxg") #== "cxgdba"
p middle_permutation("abcdxgz") #== "dczxgba"
