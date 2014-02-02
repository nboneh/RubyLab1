def palindrome?(string)
  string = string.downcase
  string = string.gsub(/[^0-9a-z]/ , '')
  reverse = string.reverse
  if reverse == string
    return true
  end
  false
end

p palindrome?("A man, a plan, a canal -- Panama")
p palindrome?("Madam, I'm Adam!")  
p palindrome?("Abracadabra") 
