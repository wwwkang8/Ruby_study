class Parent
  def say_hello
    puts "Hello from #{self}"
  end
end

p = Parent.new
p.say_hello

# 자식 클래스 생성
class Child < Parent
end

c = Child.new
c.say_hello

