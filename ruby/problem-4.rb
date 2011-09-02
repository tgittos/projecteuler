#! /usr/bin/env ruby

#Brute force
#palindromes = 999.times.collect{|n| ((999 - n).to_s + (999 - n).to_s.reverse).to_i}.reject{|n| n.to_s.length < digits * 2 - 1}

palindromes = []
(0..899).each do |l|
  left = 999 - l
  (0..899).each do |r|
    right = 999 - r
    x = left * right
    palindromes << x if (x.to_s == x.to_s.reverse)
  end
end
puts palindromes.sort.last
