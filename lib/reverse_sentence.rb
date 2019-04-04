# A method to reverse the words in a sentence, in place.
# Time complexity: O(n ** c), the time complexity is cuadratic because there is a nested loop which iterations depend on the size of the string
# Space complexity: O(n), where n is the size of the array that will be created to store the pieces of the new string
def reverse_sentence(my_sentence)
  i = 0
  each_word_array = []
  word = ""
  reverse_sentence = ""
  until i > my_sentence.length
    if my_sentence[i] != " " && my_sentence[i] != nil
      word += my_sentence[i]
      i += 1
    elsif my_sentence[i] == nil
      each_word_array << word

      (each_word_array.length - 1).times do |j|
        reverse_sentence += "#{each_word_array[each_word_array.length - (j + 1)]}"
        i += 1
      end

      return reverse_sentence += "#{each_word_array[0]}"
    else
      each_word_array << word
      each_word_array << my_sentence[i]
      word = ""
      i += 1
    end
  end
end

# test_string = "Yoda is awesome!"

# puts reverse_sentence(test_string)
