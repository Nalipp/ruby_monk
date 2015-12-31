def palindrome?(sentence)
  raw_sentence = sentence.downcase.gsub(" ", "")
  if raw_sentence == raw_sentence.reverse
    true
  else
    false
  end
end

string = "Race fast safe car"
p palindrome?(string)

string = "Yreka Bakey"
p palindrome?(string)
