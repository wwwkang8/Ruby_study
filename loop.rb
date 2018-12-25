#[5.2.1] while과 until
# 루비의 기본 반복문은 while과 until입니다. 이것은 일정 조건이 true인 동안(while)
# 또는 조건이 true가 될 때까지(until) 코드 청크를 반복해서 실행합니다. 예를 들어

x=10 # 반복문 카운터 변수를 초기화
while x >= 0 do # x가 0보다 크거나 같으면 반복
  puts x #x값 출력
  x= x-1
end

# until을 써서 다시 10까지
x=0
until x>10 do
  puts x
  x = x+1
end

#[5.2.3] for/in 루프
=begin
for 루프나 for/in 루프는 열거형 객체(배열)의 요소를 반복해서 처리합니다.
반복처리를 실행할 때마다 지정한 루프 변수에 요소를 대입해서 반복 본체를 실행합니다.
=end

for var in collection do
  body
end

#배열 속 요소를 출력
array = [1,2,3,4,5]
for element in array do
  puts element
end

#해시 속 키와 값을 출력
hash = {:a=>1, :b=>2, :c=>3}
for key, value in hash
  puts "#{key} => #{value}"
end

# each 반복자 사용
hash = {:a=>1, :b=>2, :c=>4}
hash.each do |key, value|
  puts "#{key} => #{value}"
end
#for로 만든 루프와 each로 만든 루프의 차이점은 반복자 뒤 코드 블록은 새로운 변수 범위를 정의한다는 것입니다.

#[5.3] 반복자와 Enumerable 객체
# while, until, for 루프가