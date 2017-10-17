# Your task in this Kata is to emulate text justification in monospace font. 
# You will be given a single-lined text and the expected justification width. The longest word will never be greater than this width.

# Here are the rules:

#     Use spaces to fill in the gaps between words.
#     Each line should contain as many words as possible.
#     Use '\n' to separate lines.
#     Gap between words can't differ by more than one space.
#     Lines should end with a word not a space.
#     '\n' is not included in the length of a line.
#     Large gaps go first, then smaller ones: 'Lorem---ipsum---dolor--sit--amet' (3, 3, 2, 2 spaces).
#     Last line should not be justified, use only one space between words.
#     Last line should not contain '\n'
#     Strings with one word do not need gaps ('somelongword\n').

# Example with width=30:

# Lorem  ipsum  dolor  sit amet,
# consectetur  adipiscing  elit.
# Vestibulum    sagittis   dolor
# mauris,  at  elementum  ligula
# tempor  eget.  In quis rhoncus
# nunc,  at  aliquet orci. Fusce
# at   dolor   sit   amet  felis
# suscipit   tristique.   Nam  a
# imperdiet   tellus.  Nulla  eu
# vestibulum    urna.    Vivamus
# tincidunt  suscipit  enim, nec
# ultrices   nisi  volutpat  ac.
# Maecenas   sit   amet  lacinia
# arcu,  non dictum justo. Donec
# sed  quam  vel  risus faucibus
# euismod.  Suspendisse  rhoncus
# rhoncus  felis  at  fermentum.
# Donec lorem magna, ultricies a
# nunc    sit    amet,   blandit
# fringilla  nunc. In vestibulum
# velit    ac    felis   rhoncus
# pellentesque. Mauris at tellus
# enim.  Aliquam eleifend tempus
# dapibus. Pellentesque commodo,
# nisi    sit   amet   hendrerit
# fringilla,   ante  odio  porta
# lacus,   ut   elementum  justo
# nulla et dolor.

# Also you can always take a look at how justification works in your text editor or directly in HTML (css: text-align: justify).

# Have fun :)

def arrange(temp, result, limit)
  temp[-1].strip!

  spaces = limit - temp.join.length
  spaces.times { |inner| temp[inner % (temp.size - 1)] << ' ' } if temp.size > 1

  result << temp.push("\n").join
  temp.clear
end

def justify(string, limit)
  return string if string.split.size <= 1
  result = ''
  words = string.split
  temp = []
  until words.empty?
    arrange(temp, result, limit) if temp.join.size + words.first.length > limit
    temp << words.shift + ' '
  end
  result << temp.map(&:strip).join(' ')
end

p justify('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis dolor mauris, at elementum ligula', 30)
p justify('123 45 6', 7)
p justify('1234567', 7)
