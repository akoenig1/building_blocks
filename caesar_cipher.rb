def caesar_cipher(message, shift_factor)
    message_code = message.bytes
    message_code_ciphered = message_code.map { |code| 
        if ((code >= 65) && (code <= 90))
            code += shift_factor
            if code > 90
                difference = code - 90
                code = 64 + difference
            end
        elsif ((code >= 97) && (code <= 122))
            code += shift_factor
            if code > 122
                difference = code - 122
                code = 96 + difference
            end
        else
            code = code
        end
        code.chr
    } 
    return message_code_ciphered.join
end

puts caesar_cipher("What a string!", 5)