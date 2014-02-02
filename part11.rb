class CartesianProduct
  include Enumerable
  def initialize(a,b)
  @members = []
  a.each{ |i|
    b.each{|j|
      member = []
      member.push(i)
      member.push(j)
      @members.push(member)
    }
  }
  end
  def each
    @members.each do |member|
       yield member
     end
  end
end 

c= CartesianProduct.new([:a,:b,],[4,5])
c.each { |elt| puts elt.inspect }
c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect }
