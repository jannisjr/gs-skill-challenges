def encode(plaintext, key)
  p "plaintext = #{plaintext}"
  p "key = #{key}"
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  p "cipher = #{cipher}"
  ciphertext_chars = plaintext.chars.map do |char|
    p ciphertext_chars
    (65 + cipher.find_index(char)).chr
  end
  puts ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  puts plaintext_chars.join
end

# Intended output:
#
encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"