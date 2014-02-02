class Numeric
@@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.000}
def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
  
 def in(currency)
   singular_currency = currency.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self / @@currencies[singular_currency]
    else
      method_missing()
    end
  end
end

p 5.yens.in(:yens)
p 1.rupee.in(:euro)
p 7.dollars.in(:yens)
p 7.yens.in(:dollars)
