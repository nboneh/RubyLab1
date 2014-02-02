

def glob_match(filenames, pattern)
  res = []
#reg = Regexp.new( pattern)
   for name in filenames
    if File.fnmatch(pattern, name, File::FNM_DOTMATCH)
      res.push(name)
    end
  end
  res
end

p glob_match(["part1.rb", "part2.rb", "part2.rb~", ".part3.rb.un~"],"*part*rb?*")
