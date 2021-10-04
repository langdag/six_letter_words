class Solution
  EXPECTED_WORD_LENGTH = 6

  def generate_six_letter_array(file_data)
    result = []

    file_data.each do |word|
      file_data.each do |second_word|
        combined_word = word + second_word
        if combined_word.length.eql?(EXPECTED_WORD_LENGTH) && file_data.include?(combined_word)
          result << combined_word
        end
      end
    end
    result.compact.uniq
  end
end

