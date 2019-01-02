# 'n'이라는 인수 하나를 받는 factorial 메서드를 정의
# n이라는 인수 하나를 받는 factorial 메서드를 정의
def factorial(n)
  if n < 1
    raise "argument must be > 0"
  elsif n==1
    1
  else
    n*factorial(n-1)
  end
end

answer = factorial(0)
puts answer

# 6.1.1 메서드 반환값
# 메서드는 정상종료 혹은 비정상종료를 한다. 비정상 종료는 메서드가 예외를 일으키는 것입니다.
# return 키워드를 사용하면 메서드를 마지막까지 실행하지 않고도 처리를 종료하게 됩니다.
def factorial2(n)
  raise "bad argument" if n < 1 #인수가 1미만이면 에러 메시지를 띄운다
  return 1 if n == 1 # n==1 이라면 1을 리턴하고 바로 메서드를 종료한다
  n * factorial2(n-1) # 위의 경우가 아니라면 계속 실행한다.
end

def factorial3(n)
  raise "bad argument" if n < 1 #인수가 1미만이면 에러 메시지를 띄운다
  return 1 if n == 1 # n ==1 이라면 1을 리턴하고 바로 메서드를 종료한다.
  n * factorial3(n-1) # 그렇지 않다면 n-1을 또 호출한다.
end

# return은 꼭 필요하지 않으면 생략하는 것이 보통이다
# return은 꼭 필요하지 않으면 생략하는 것이 보통이다
# return은 꼭 필요하지 않으면 생략하는 것이 보통이다.
def factorial4(n)
  raise "bad argument" if n < 1 #인수가 1미만이면 에러메시지를 띄운다
  return 1 if n == 1 # n == 1이라면 1을 리턴하고 바로 메서드를 종료한다.
  n * factorial4(n-1)
end

# 직교좌표 x,y를 극좌표 magnitude, angle로 변환
def polar(x,y)
  return Math.hypot(y, x), Math.atan2(y, x) # 이렇게 보면 리턴할 값을 여러 개 반환할 수 있다
end

def polar2(x,y)
  return Math.hypot(x, y), Math.atan2(y, x)
end

def polar3(x, y)
  return Math.hypot(x, y), Math.atan2(y, x)
end

# 반환값이 여러개라면 값을 배열로 모아서 메서드의 반환값으로 만들면 반환값을 하나로 만들 수 있다
# 값을 여러개 반환하는 return문을 사용하는 것보다는 배열로 값들을 반환하는 방법이 간단하다
def cartesian(magnitude, angle)
  [magnitude*Math.cos(angle), magnitude*Math.sin(angle)]
end

def cartesian2(magnitude, angle)
  [magnitude*Math.cos(angle), magnitude*Math.sin(angle)]
end


# 6.1.3 객체에서 메서드 호출
# 메서드는 반드시 객체에서 호출됩니다.(이 객체는 리시버라고 불립니다. 객체지향 페러다임에서는 메서드를 '메시지'라고 부르고
# 수신(receiver) 객체에 '보낸다'라는 표현을 씁니다). 메서드 본문에서 메서드를 호출하는 객체를 참조하려면 self 키워드를 씁니다.
# 메서드를 호출할 때 객체를 지정하지 않으면 메서드는 암묵적으로 self에서 호출됩니다.
first = text.index(pattern)
second = text.index(pattern)
third = text.index(pattern)
fourth = text.index(pattern)

o = "message"
def o.printme
  puts self
end
o.printme

# 6.1.5 메서드 정의 해제
def sum(x, y); x+y; end  # 메서드 정의
puts sum(1, 2)   # 메서드 사용
undef sum   # 메서드 정의 해제

def sum(x, y); x+y; end # 메서드 정의
puts sum(1, 2)
undef sum #메서드 정의 해제
