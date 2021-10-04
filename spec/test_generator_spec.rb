require 'rspec'
require_relative '../solution'

RSpec.describe "TestGenerator" do
  let(:generator) { Solution.new }
  let(:expected_word_length) { 6 }
  let(:file) { File.open('test_dictionary.txt') }

  describe '#iterate over array' do
     it 'finds six_letter words' do
       expect(generator.generate_six_letter_array(file)
                             .all? { |word| word.length.eql?(expected_word_length) }).to be true
     end
  end
end