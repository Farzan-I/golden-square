def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars) # changed a...z to become inclusive of the z
  ciphertext_chars = plaintext.chars.map do |char|
    # p "cipher.find_index(char):"
    # p cipher.find_index(char)
    (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars) # changed a...z to become inclusive of the z
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65] # changed from cipher[65 - char.ord]
  end
  return plaintext_chars.join
end

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"