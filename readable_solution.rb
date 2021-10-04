class ReadableSolution
  EXPECTED_WORD_LENGTH = 6

  def generate_six_letter_array(file)
    file.each do |word|
      result = file.map do |second_word|
        combined_word = word + second_word
        if combined_word.length.eql?(EXPECTED_WORD_LENGTH) && file.include?(combined_word)
          combined_word
        end
      end.compact.uniq
    end
  end
end