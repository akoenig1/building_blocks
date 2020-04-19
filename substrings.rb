dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings words, subs
    matches = {}
    words.downcase().split(/\W/).each { |word|
        subs.each{ |str|     
            if word.include? str
                # increase count if already in hash
                if matches[str]
                    matches[str] += 1
                # otherwise add to hash
                else
                    matches[str] = 1
                end
            end
        }
    }
    matches
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)