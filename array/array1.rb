a = [3.14, 'pie', 99]

a.class
a.length
a[0] = 3
a[0] + 2
a[1]
a[2]
a[3]

b = Array.new
puts b.class
b.length
b[0] = 'second'
b[1] = 'array'
puts b

c = [1,2,3,4,5]
puts c[-1]
puts c[-2]
puts c[-99] #nil

puts '점 2개 : 경계값 포함'
puts c[1..4]
puts '점 3개 : 경계값 포함X'
puts c[1...4]

# []= 연산자
# 특정 인덱스에 원소를 대입할 수 있는 것을 말한다.
c[5] = 10
c[6] = 11
puts c

stack = []
stack.push 'red'
stack.push 'yellow'
stack.push 'black'
puts stack
puts stack.first
puts stack.last