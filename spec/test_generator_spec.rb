require 'rspec'

require_relative '../faster_solution'
require_relative '../readable_solution'

RSpec.describe "TestGenerator" do
  let(:faster_generator) { FasterSolution.new }
  let(:readable_generator) { ReadableSolution.new }
  let(:expected_word_length) { 6 }
  let(:file) { File.open('test_dictionary.txt') }

  describe '#iterate over array' do
     it 'finds six_letter words(faster solution)' do
       expect(faster_generator.fast_generate_six_letter_array(file)
                             .all? { |word| word.length.eql?(expected_word_length) }).to be true
     end

     it 'finds six_letter words(readable solution)' do
       expect(readable_generator.generate_six_letter_array(file)
                             .all? { |word| word.length.eql?(expected_word_length) }).to be true
     end
  end
end