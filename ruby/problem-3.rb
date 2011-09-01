#! /usr/bin/env ruby

def is_prime? n
  return true if n == 2
  return false if n % 2 == 0
  x = (n / 2).floor * 1.0
  while (x > 1)
    return false if (n / x) == (n / x).floor
    x = x - 1.0
  end
  true
end

n = 600851475143
x = Math.sqrt(n).floor * 1.0
while (x > 1)
  break if ((n / x) == (n / x).floor) && is_prime?(x)
  x = x - 1.0
end

puts x
