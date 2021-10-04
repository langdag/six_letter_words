require_relative 'faster_solution'
require_relative 'readable_solution'

class GenerateSixLetterWordArray
  # To test solutions uncomment the next lines and run ruby generate_six_letter_word_array.rb
  # fast solution
  # file_data = IO.readlines("dictionary.txt").map(&:chomp)
  # p FasterSolution.new.fast_generate_six_letter_array(file_data)
  # or readable solution
  file = IO.readlines("dictionary.txt").map(&:chomp)
  p ReadableSolution.new.generate_six_letter_array(file)
end