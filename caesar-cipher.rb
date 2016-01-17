def caesar_cipher(uncoded_message, agjustment = 11)
  alphabet  = Array('a'..'z')
  lowercase = Hash[alphabet.zip(alphabet.rotate(agjustment))]  # hash and zip: create a hash using the original letters 
															   # as the key and the "coded" letters as the value.
															   # rotate: shifts array by amount specified.
  
  alphabet = Array('A'..'Z')									# We can reuse the data name since it has already 
																# served its purpose.
  uppercase = Hash[alphabet.zip(alphabet.rotate(agjustment))]
  
  encryption_key = lowercase.merge(uppercase)					# merge: Create one hash with all values.
  
  uncoded_message.chars.map { |l| encryption_key.fetch(l, l) }	# chars: creates array from message string
																# map: performs the same action on each array member
																# fetch: searches the hash for the value using array member as key
																# no match returns the key(spaces and punctuation.)
end
p caesar_cipher("The quick brown fox.").join					# join: result is an array. "join" creates a string
