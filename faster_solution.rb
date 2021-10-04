class FasterSolution
  def fast_generate_six_letter_array(file)
    file.each do |word|
      unless word.length.eql?(1) || word.length >= 5
        result = file.map do |second_word|
          combined_word = word + second_word
          combined_word if combined_word.length.eql?(6) && file.include?(combined_word)
        end.compact.uniq
      end
    end
  end
end

