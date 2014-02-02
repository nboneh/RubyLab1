def count_words(string)
  string = string.downcase
  string = string.gsub(/[^0-9a-z ]/ , '')
  h = Hash.new
  words = string.split(' ')
  words.each do |i|
    if h.has_key?(i)
        h[i] = h[i] + 1
    else
        h[i] = 1
    end
  end
  h
end

p count_words("A man, a plan, a canal -- Panama")

p count_words("Doo bee doo bee doo")
