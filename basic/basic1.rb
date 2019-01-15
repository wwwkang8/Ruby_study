
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


