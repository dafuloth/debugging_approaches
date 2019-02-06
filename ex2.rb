def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char).to_i).chr
  end
  ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)

  #puts "key.chars.uniq : #{key.chars.uniq}"
  #puts "key.chars : #{key.chars}"

  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  end
  plaintext_chars.join
end

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"

puts
puts "Input (string is \"theswiftfoxjumpedoverthelazydog\"):"
puts "puts encode(\"theswiftfoxjumpedoverthelazydog\", \"secretkey\")"
puts "Output:"
puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
puts

puts "So, expecting that:"
puts "puts decode(encode(\"theswiftfoxjumpedoverthelazydog\", \"secretkey\"), \"secretkey\")"

puts "Should return:\ntheswiftfoxjumpedoverthelazydog"
puts "Instead it returns:"
puts decode(encode("theswiftfoxjumpedoverthelazydog", "secretkey"), "secretkey")


#puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
