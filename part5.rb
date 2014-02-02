def combine_anagrams(words)

res = []
for word in words
added = false
  for anag in res
    if anag[0].split('').sort == word.split('').sort
      anag.push(word)
      added = true
      break
    end
  end
  if(!added)
    res.push([word])
  end
end  
res
end

p  combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'])
