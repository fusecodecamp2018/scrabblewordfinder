#!/usr/bin/env ruby
require 'pp'

class Hash
  def safe_invert  # ~= invert, but values are stored in an array to avoid overwrites
    each_with_object({}) do |(key, value), out|
      out[value] ||= []
      out[value] << key
    end
  end
end

DICTIONARY = "words_simple.txt"
MIN_LETTER_CNT = 2

def permute_words(letters, dictionary)
  words = {}
  for i in MIN_LETTER_CNT..letters.length do
    letters.permutation(i).each do |permutation|
      permString = "#{permutation.join('')}"
      words[permString] = 'e' if dictionary[permString] == 'e'
    end
  end

  words
end

def score_word(word)
  score = 0
  word.split(//).each { |letter| score += get_letter_value(letter) }
  score
end

def get_letter_value(letter)
  {
    'a' => 1, 'b' => 3, 'c' => 3, 'd' => 2, 'e' => 1, 'f' => 4, 'g' => 2, 'h' => 4,
    'i' => 1, 'j' => 8, 'k' => 5, 'l' => 1, 'm' => 3, 'n' => 1, 'o' => 1, 'p' => 3,
    'q' => 10,'r' => 1, 's' => 1, 't' => 1, 'u' => 1, 'v' => 4, 'w' => 4, 'x' => 8,
    'y' => 4, 'z' => 10,
  }[letter]
end

abort("Error: Need to add letters as argument to script") if ARGV.empty?
abort("Error: Dictionary file '#{File.absolute_path(DICTIONARY)}' not found.") unless File.exists?(DICTIONARY)

dictionary = {}
File.open(DICTIONARY).each { |line| dictionary[line.chomp("\n")] = "e" }

scores = {}
permute_words(ARGV[0].to_s.split(//), dictionary).each { |word, e| scores[word] = score_word(word) }

new_hash = scores.safe_invert
pp new_hash
