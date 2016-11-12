
def create_cipher(key)
  letters = ('a'..'z').to_a
  letters << letters.slice!(0..key - 1)
  letters.flatten
end

def caesar_cipher(string, key)
  alphabet = ('a'..'z').to_a
  cipher = create_cipher(key)

  result = string.chars.map do |char|
      if char.match(/[a-z]/)
        cipher[alphabet.index(char)]
      elsif char.match(/[A-Z]/)
        cipher[alphabet.index(char.downcase)].upcase
      else
        char
      end
  end

  result.join('')
end

p caesar_cipher("What a string!", 5) # => "Bmfy f xywnsl!"
