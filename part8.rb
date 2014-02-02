class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s       # make sure it's a string
    attr_reader attr_name            # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q"
        def #{attr_name}=(value)
        if !defined? (@#{attr_name}_history)
                @#{attr_name}_history = [nil]
        end
        @#{attr_name}=(value)
        @#{attr_name}_history.push(value)
        end"
  end
end

class Foo
  attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 3
f.bar = 5
p f.bar_history
p f.bar
f = Foo.new
f.bar = 6
p f.bar_history
