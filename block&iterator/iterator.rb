# 루비에서 반복자란 코드 블록을 호출할 수 있는 메서드 yield를 말한다.
# for문이 아니고 yield문을 뜻한다.
# 소스 코드 블록은 메서드를 호출한 바로 다음에만 나온다는 것과
# 코드 블록은 루비 해석기가 이를 해석하는 순간에 실행되는 것이 아니다.

# 반복자 yield 예시
def two_times
  yield
  yield
end
two_times { puts "Hello" }

# 블록이 재밌는 점은 매개변수를 블록에 넘겨줄 수도 있고, 블록의 실행결과를 다시 받아올 수도 있다.

def fib_up_to(max)
  i1, i2 = 1, 1 # 병렬대입 i1 = 1, i2 = 1
  while i1 <= max
    yield i1
    i1, i2 = i2, i2+i1
  end
end

fib_up_to(1000) { |f| print f, " " }


class Array
  def find
    each do |value|
      return value if yield(value)
    end
  end
end
[1,3,5,7,9].find { |v| v*v >30 }