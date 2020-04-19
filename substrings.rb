dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings words, subs
    matches = {}
    
        subs.each{ |str|     
            if words.include? str
                if matches[str]
                    matches[str] += 1
                else
                    matches[str] = 1
                end
            end
        }
    matches
end

puts substrings("below", dictionary)