# Write your code here.
require 'pry'

def dictionary
  {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => 'b',
    "be" => 'b',
    "you" => "u",
    "at" =>  "@",
    "and" => "&" 
  }
end

def word_substituter(tweet_string)
  short_array = []
  array = tweet_string.split(" ")
  d_keys = dictionary.keys 
  array.each_with_index do |word, index|
    if d_keys.include?(word)
      
      short_array.push(word)
      binding.pry
    else
      short_array.push(array[index])
    end
  end
  short_array.join(" ")
end
  