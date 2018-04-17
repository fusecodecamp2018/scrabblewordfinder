#!/usr/bin/env ruby

#####################################
##  PSEUDOCODE ######################
##    Given: a set of letters.
##
##    For every possible combination of those letters,
##    Determine if the set of letters is a valid word.
##
##
##    If yes,
##      Calculate the score of that word according to scrabble and-
##      Save the word/score combination
##    If no,
##      Move on to the next set of letters
##
##    From the saved word/score combinations, determine the highest score
###########################################################################
require 'pp'

DICTIONARY = "words_simple.txt"

# Give them this
def permute_words(letters, dictionary)
  words = {}

  letters.length.times do |i|
    letters.permutation(i).each do |permutation|
      permString = "#{permutation.join('')}"

      if dictionary[permString] == 'exists'
        words[permString] = 'exists'
      end
    end
  end

  return words
end

def score_word(word)
  score = 0

  word.split(//).each do |letter|
    score += get_letter_value(letter)
  end

  return score
end

def get_letter_value(letter)
  letter_scoring = {
    'a' => 1, 'b' => 3, 'c' => 3, 'd' => 2, 'e' => 1, 'f' => 4, 'g' => 2, 'h' => 4,
    'i' => 1, 'j' => 8, 'k' => 5, 'l' => 1, 'm' => 3, 'n' => 1, 'o' => 1, 'p' => 3,
    'q' => 10,'r' => 1, 's' => 1, 't' => 1, 'u' => 1, 'v' => 4, 'w' => 4, 'x' => 8,
    'y' => 4, 'z' => 10,
  }

  return letter_scoring[letter]
end


dictionary = {}
File.open(DICTIONARY).each do |word|
  word.chomp!
  dictionary.store(word, 'exists')
end

scores = {}
letters_array = ARGV[0].to_s.split(//)

permute_words(letters_array, dictionary).each do |word, e|
  score = score_word(word)
  scores.store(word, score)
end

pp scores
