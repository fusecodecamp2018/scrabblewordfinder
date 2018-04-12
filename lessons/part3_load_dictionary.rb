#!/usr/bin/env ruby

########### FINAL ###########

DICTIONARY = "words_simple.txt"
abort("Error: Dictionary file '#{File.absolute_path(DICTIONARY)}' not found.") unless File.exists?(DICTIONARY)

dictionary = []
File.open(DICTIONARY).each do |line|
  dictionary << line.chomp("\n")
end

puts dictionary

#################################################
########### ITERATION 1 ###########
# File.open("words_simple.txt").each do |line|
#   puts line
# end

########### ITERATION 2 ###########
# dictionary = []
# File.open("words_simple.txt").each do |line|
#   dictionary << line
# end

# puts dictionary

########### ITERATION 3 ###########
# dictionary = []
# File.open("words_simple.txt").each do |line|
#   dictionary << line
# end

# require 'pp'
# pp dictionary

########### ITERATION 3 ###########
# dictionary = []
# File.open("words_simple.txt").each do |line|
#   dictionary << line.chomp("\n")
# end

# require 'pp'
# pp dictionary
#################################################
