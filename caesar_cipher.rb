# Adds method Letter? to class String which checks if a character is in the alphabet
class String
  def letter?
    self.match?(/[[:alpha:]]/)
  end
end

def shift(ord, shift)
  if ord < 91
    ord + shift > 90 ? ord -= 26 - shift : ord += shift
  else
    ord + shift > 122 ? ord -= 26 - shift : ord += shift
  end
  ord
end

def caesar_cipher(text, shift_amount)
  cipher = text.split('').map do |char|
    if char.letter?
      shift(char.ord, shift_amount).chr
    else
      char
    end
  end
  cipher.join('')
end

puts caesar_cipher('What a string!', 5)
