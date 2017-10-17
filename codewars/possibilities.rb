# def possibilities(words)
#   words.map do |k, v|
#     result = []
#     v.sort!
#     until v.empty?
#       result << [v[0]]
#       1.upto(v.size - 1) do |x|
#         result << [v[0]] + v.slice(1, x)
#       end
#       result << [v[0], v[-1]] if v[0] != v[-1]
#       v.shift
#     end
#     { k => result.uniq }
#   end
# end

def possibilities(words)
  hsh = {}
  words.each do |k, v|
    result = []
    v.sort!
    until v.empty?
      result << [v[0]]
      1.upto(v.size - 1) do |x|
        result << [v[0]] + v.slice(1, x)
      end
      result << [v[0], v[-1]] if v[0] != v[-1]
      v.shift
    end
    hsh[k] = result.uniq
  end
  hsh
end

words = {
  life:   %w{ vida vie Leben },
  death:  %w{ muerte mort Tode }
}

p possibilities(words)