class String 
  def palindrome?
    string = self.downcase
    string = string.gsub(/[^0-9a-z]/ , '')
    reverse = string.reverse
    if reverse == string
      return true
    end
    false
  end
end

module Enumerable
  def palindrome?
    reverse =[]
     self.reverse_each{|v|
      reverse.push(v)
     }
    if reverse == self
      return true
    end
    false
  end
end

p "cheese".palindrome?
p "Madam, I'm Adam!".palindrome?
p [1,2,3,2,1].palindrome?
