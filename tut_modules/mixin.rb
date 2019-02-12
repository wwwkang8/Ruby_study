module Debug
  def who_am_i?
   puts "#{self.class.name} (id :#{self.object_id}: #{self.name})"
  end
end

class Phonograph
  include Debug

  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class EightTrack
  include Debug

  attr_reader :name
  def initialize(name)
    @name = name
  end
end

ph = Phonograph.new("jake").who_am_i?
et = EightTrack.new("jessica").who_am_i?