testString = 'Caesar cipher!'

class Cipher

def run (string, shift)
   
  # result string
  result = []
  string.split('').each { |letter| 

  # reduce shift to minimum amount (to handle large shifts)
  adjustedShift = shift
  wrapCount = 0
  if shift > 26
    wrapCount = shift / 26
    if wrapCount > 1
      adjustedShift = shift - wrapCount * 26
    end  
  end


 # handle spaces and special characters
  if letter.ord >= 32 && letter.ord <= 47
    result.push(letter)
  end 

  # upper case handling with wrapping
  if (letter.ord >= 65 && letter.ord <= 90) && (adjustedShift > (90 - letter.ord))
      result.push(((adjustedShift - (91 - letter.ord)) + 65).chr)
  end

  # upper case handling without wrapping
  if (letter.ord >= 65 && letter.ord <= 90) && (adjustedShift < (90 - letter.ord))
      result.push((letter.ord + adjustedShift).chr)   
  end

  # lower case handling with wrapping
  if (letter.ord >= 97 && letter.ord <= 122) && (adjustedShift > (122 - letter.ord))
      result.push(((adjustedShift - (123 - letter.ord)) + 97).chr)
  end   

  # lower case handling without wrapping
  if (letter.ord >= 97 && letter.ord <= 122) && (adjustedShift < (122 - letter.ord))
      result.push((letter.ord + adjustedShift).chr)   
  end
  
}

return result.join();

end

end

new_cipher = Cipher.new
puts new_cipher.run(testString, 1000);