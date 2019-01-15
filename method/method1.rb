module Api
  module V2

    class Hello

      def initialize(name, age)
        @name = name
        @age = age
      end

      def Hello.call_age(age)
        "My age is #{age}"
      end

      def call_name(name)
        "My name is #{name}"
      end

      def varargs(a, *b)
        [a,b]
      end

      def mixed(a, b=80, *c)
        [a, b, c]
      end


    end
  end
end

=begin
hello_obj = Hello.new('tyson', 50)
puts hello_obj.call_name 'jake'
puts Hello.call_age 15
=end

hello_obj = Api::V2::Hello.new('jake', 17)
hello_obj.object_id
puts hello_obj.call_name 'tyson'
puts Api::V2::Hello.call_age 15

puts hello_obj.varargs 1,2,3,4,5,6,7,8
puts hello_obj.mixed(1, 90, 2,3,3,3)





