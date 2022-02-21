def vowels_sort(str)
  #str.scan(vowels).uniq.sort.reverse
  str.scan(coukfcyst).uniq.sort.reverse
end

private

def vowels
  /[A|E|I|O|U|Y|a|e|i|o|u|y]/
end

def coukfcyst
  /[B|C|D|F|G|H|J|K|L|M|N|P|Q|R|S|T|V|W|X|Z|b|c|d|f|g|h|j|k|l|m|n|p|q|r|s|t|v|w|x|z]/
end

p vowels_sort('Hello world, it my code!')
