# 7. Implement the following code in Ruby: Create a module called HelperMethods that include a method called `titleize` that does the following: it takes in a string and returns the string back after capitalizing each word in that string. For example if you pass to the method a string "hello world" you should get back "Hello World". The methods should not capitalize the following words: in, the, of, and, or, from.

module HelperMethods
  def titleize(string)

    sentence = string.split(" ")
    capitalized = []

    first_word = sentence.shift
    first_word.capitalize!
    capitalized << first_word


    sentence.each do |word|

      if word == "in" || word == "the" || word == "of" || word == "and" || word == "on" || word == "from"
        capitalized << word
      else
        word[0] = word[0].capitalize!
        capitalized << word
      end

    end

    puts capitalized.join(" ")

  end
end



include HelperMethods


sentence1 = "hello world"
sentence2 = "hi"
sentence3 = "the lord of the rings"

titleize(sentence1)
titleize(sentence2)
titleize(sentence3)
