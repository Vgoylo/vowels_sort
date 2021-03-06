# frozen_string_literal: true

class Sort
  attr_accessor :str

  def initialize(str)
    @str = str.is_a?(String) ? str : str.to_s
  end

  def vowels_coukfcyst_sort
    numeric? ? [] : str.scan(coukfcyst).uniq.sort.reverse
  end

  def vowels_vowels_sort
    numeric? ? [] : str.scan(vowels).uniq.sort.reverse
  end

  private

  def numeric?
    !Float(self).nil?
  rescue StandardError
    false && str.scan(/\A+(\W+\D+)\z/)
  end

  def vowels
    /[A|E|I|O|U|Y|a|e|i|o|u|y]/
  end

  def coukfcyst
    /[B|C|D|F|G|H|J|K|L|M|N|P|Q|R|S|T|V|W|X|Z|b|c|d|f|g|h|j|k|l|m|n|p|q|r|s|t|v|w|x|z]/
  end
end
