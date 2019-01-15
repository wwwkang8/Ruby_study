class Holder
  @@var = 99
  def Holder.var=(val)
    @@var = val
  end

  def var
    @@var
  end

end
@@var = "top level variable"

a = Holder.new
puts a.var

Holder.var = 123
puts a.var

def a.get_var
  @@var
end

puts a.get_var