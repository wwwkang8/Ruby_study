module Debug
  def who_am_i?
    puts "#{self.class.name} (id :#{self.object_id}: #{self.name})"
  end
end

module Debug2
  def who_am_i?
    puts "This is Debug2"
  end
end

class Hello
  include Debug
  include Debug2

  attr_reader :name
  def initialize(name)
    @name = name
  end
end

h = Hello.new("jake").who_am_i?