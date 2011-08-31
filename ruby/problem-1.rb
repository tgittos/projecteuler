#! /usr/bin/env ruby

puts (0..999).inject{|sum, n| ((n % 3 == 0) || (n % 5 == 0)) ? sum + n : sum + 0}
