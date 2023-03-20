def caesar_cipher(input_string, num)
    lowercase_letters = *("a".."z")
    uppercase_letters = *("A".."Z")
    lowercase_unicode = lowercase_letters.map {|value| value.ord}
    uppercase_unicode = uppercase_letters.map {|value| value.ord}
    input_array = input_string.chars
    input_unicode = input_array.map {|value| value.ord}

    cipher_unicode = input_unicode.map do |value|
        if lowercase_unicode.include?(value) then
            lowercase_unicode[(lowercase_unicode.find_index(value) + num) % 26]
        elsif uppercase_unicode.include?(value) then
            uppercase_unicode[(uppercase_unicode.find_index(value) + num) % 26]
        else
            value
        end
    end
    
    cipher_text = cipher_unicode.map {|value| value.chr}
    p cipher_text.join
end

caesar_cipher("What a string!", 5)