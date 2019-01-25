
# 메서드 호출은 마침표로 구분되는데
# 마침표 앞부분 : 수신자
# 마침표 뒷부분 : 실행될 메서드
puts "gin joint".length
puts "Rick".index("c")
puts "Rick".index("c")
puts 42.even?

# 메서드 생성
def say_goodnight(name)
  result = "Good night, #{name}"
  return result
end

# 잠잘 시간입니다
puts say_goodnight("John-boy")
puts say_goodnight("Mary-Ellen")

# 작은 따옴표 사용 : 문자열을 그대로 사용할 때
# 큰 따옴표 사용 : 문자열을 변형하거나 치환할 때
puts "And good night,\n Grandma"

inst_section = {

    :cello => :string,
    :clarinet => :woodwind,
    :drum => :percussion

}

puts inst_section[:cello]
puts inst_section[:clarinet]


histogram = Hash.new(0)
puts histogram['ruby']   #기본값은 0으로 설정되어 있다.
histogram['ruby'] = histogram['ruby'] + 1
puts histogram['ruby']


def call_block
  puts "Start of method"
  yield
  yield
  puts "End of method"
end

call_block { puts "In the block"}

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  def to_s
    "ISBN: #{@isbn}, #{@price}"
  end
end

b1 = BookInStock.new(:isbn1, 3)

b2 = BookInStock.new(:isbn2, 3.14)

b3 = BookInStock.new(:isbn3, "5.67")




























