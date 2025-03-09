def substring(word, array)
  result = Hash.new(0)

  array.each do |sub|
    matches = word.downcase.scan(sub.downcase).length
    result[sub] = matches if matches > 0
  end

  result
end

def substrings(words, array)
  words_array = words.split(/\W+/)
  result = Hash.new(0)

  words_array.each do |word|
    array.each do |sub|
      matches = word.scan(sub).length
      result[sub] += matches if matches > 0
    end
  end

  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# substring('below', dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
