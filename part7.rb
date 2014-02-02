class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  attr_accessor :name
  attr_accessor :calories

  def healthy?
    if(@calories  < 200)
        return true
    end
    false
  end

  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @flavor = flavor
    super(name, calories)
  end

  attr_accessor :flavor

  def delicious?
    if @flavor == "black licorice"
     return false
    end
    super
  end
end

cake = Dessert.new("cake", 205)
p cake.healthy?
p cake.delicious?
candy = JellyBean.new("candy", 4, "black licorice") 
p candy.healthy?
p candy.delicious?
candy.calories = 207
p candy.healthy?
