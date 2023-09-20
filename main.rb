def caesar_cipher(text, shift)
encoded = []
text_array = text.split("")
  
text_array.each {|letter|
  number =  letter.ord 
  if number.between?(65, 90)
    upper_boarder = 90 - shift
    if number > upper_boarder
      number += shift - 26
    else
      number += shift
    end
  elsif number.between?(97, 122)
    upper_boarder = 122 - shift
    if number > upper_boarder
      number += shift - 26
    else
      number += shift
    end
  end
  encoded.push(number.chr)
  }
  encoded_string = encoded.join("")
end 

p caesar_cipher("What a string!", 5)
