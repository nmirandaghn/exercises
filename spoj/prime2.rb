def generate_primes
  ary = 2.upto(100000).to_a

  primes = []
  while ary.size > 0
    prime = ary.shift
    primes << prime
    ary = ary.select{ |x| x % prime != 0}
  end
  primes
end

PRIMES = generate_primes

repeat = gets.chomp.to_i

repeat.times do |y|
  print "\n" if y > 0
  input = gets.chomp
  first, last = input.split[0].to_i, input.split[1].to_i

  selected = PRIMES.select { |x| x >= first && x <= last }
  selected.each { |x| puts x.to_s + "\n" }
end
