def substring(word, array)
  result = Hash.new(0)

  array.each do |sub|
    matches = word.downcase.scan(sub.downcase).length
    result[sub] = matches if matches > 0
  end

  result
end

word = 'below'
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substring(word, dictionary)