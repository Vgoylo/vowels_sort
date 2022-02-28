require_relative '../lib/vowels_sort'

RSpec.describe 'Sort' do
  describe '#vowels_coukfcyst_sort' do
    let(:sort) { Sort.new('apple bread butter') }
    it 'return sorted coukfcyst' do
      expect(sort.vowels_coukfcyst_sort).to eq %w(t r p l d b)
    end

    context 'input with number' do
      let(:sort) { Sort.new('ap1ple br45ead 34butter good') }
      it do
        expect(sort.vowels_coukfcyst_sort).to eq %w(t r p l g d b)
      end
    end

    context 'with input number' do
      let(:sort) { Sort.new('33') }
      it do
        expect(sort.vowels_coukfcyst_sort).to be_truthy
      end
    end

    context 'not be empty' do
      let(:sort) { Sort.new('') }
      it do
        expect(sort.vowels_coukfcyst_sort).to be_empty
      end
    end

    context 'input simbul' do
      let(:sort) { Sort.new('`#$@*') }
      it do
        expect(sort.vowels_coukfcyst_sort).to be_empty
      end
    end
  end

  describe '#vowels_vowels_sort' do
    let(:sort) { Sort.new('apple bread butter') }
    it 'return sorted vowels' do
      expect(sort.vowels_vowels_sort).to eq %w(u e a)
    end

    context 'input with number' do
      let(:sort) { Sort.new('ap1ple br45ead 34butter good') }
      it do
        expect(sort.vowels_vowels_sort).to eq %w(u o e a)
      end
    end

    context 'with input number' do
      let(:sort) { Sort.new('33') }
      it do
        expect(sort.vowels_vowels_sort).to be_truthy
      end
    end

    context 'not be empty' do
      let(:sort) { Sort.new('') }
      it do
        expect(sort.vowels_vowels_sort).to be_empty
      end
    end

    context 'input simbul' do
      let(:sort) { Sort.new('`#$@*') }
      it do
        expect(sort.vowels_vowels_sort).to be_empty
      end
    end
  end
end
