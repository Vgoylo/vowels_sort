require_relative '../lib/vowels_sort'

RSpec.describe 'Sort' do
  describe '#vowels_coukfcyst_sort' do
    let(:sort) { Sort.new('apple bread butter') }
    it 'return sorted coukfcyst' do
      expect(sort.vowels_coukfcyst_sort).to eq %w(t r p l d b)
    end
  end

  describe '#vowels_vowels_sort' do
    let(:sort) { Sort.new('apple bread butter') }
    it 'return sorted vowels' do
      expect(sort.vowels_vowels_sort).to eq %w(u e a)
    end
  end
end
