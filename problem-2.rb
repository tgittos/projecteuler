#! /usr/bin/env ruby

n = 0
n_plus_one = 1
fibonacci = 1
sum = 0
while (fibonacci < 4000000) do
  sum = sum + fibonacci if fibonacci % 2 == 0
  n = n_plus_one
  n_plus_one = fibonacci
  # n is old n+1
  fibonacci = n + fibonacci
end
puts sum
