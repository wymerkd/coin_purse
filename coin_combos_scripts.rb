#!/usr/bin/ruby

require ('./lib/coin_combos.rb')

puts "Enter a number"
number = gets.chomp.to_i
your_change = Pocket.new(number)
puts your_change.coin_hash()
