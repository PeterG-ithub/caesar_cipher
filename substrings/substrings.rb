def substrings(message, dictionary)
    hash = {}
    dictionary.map do |word| 
        hash[word] = message.downcase.scan(/#{word}/).count
    end
    hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
