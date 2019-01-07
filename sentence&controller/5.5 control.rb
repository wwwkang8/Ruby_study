# return : 메서드를 종료하며 호출한 곳에 값을 반환한다.
# break : 루프를 종료합니다.
# next : 루프의 나머지 처리를 건너 뛰고 다음 반복을 시작합니다. -> continue와 비슷하다.
# redo : 처음부터 다시 반복을 시작합니다.
# retry : 식 전체를 다시 평가해서 반복자를 재시작합니다.
# throw / catch : 예외 통지, 처리 절차로 이름을 보면 알 수 있는 그런 처리를 하는 일반적인 제어구조.

# 5.5.1
# x가 nil이 아니라면 x를 복사해서 2개를 돌려줌
def double(x)
  return nil if x == nil  # 도중에 값을 반환
  return x, x.dup  # 여러 값을 반환
end
# return은 늘 return을 둘러싼 메서드를 종료하게 됩니다.

#array 속에서 첫 번째로 target에 포함된 위치의 index 또는 nil을 반환
# 이 Array.index 메서드와 같은 동작을 함

def find(array, target)
  array.each_with_index do |element, index|
    return index if (element == target)
  end
  nil
end


# 5.5.2 break
# break 문은 반복 속에서 사용되면 반복에서 빠져나와 반복 바로 뒤의 식으로 제어를 옮깁니다.

while(line = gets.chop)
  break if line == "quit" # 반복문 탈출
  puts eval(line)
end
puts 'good bye' # 제어가 여기로 이동

f.each do |line|
  break if line == "quit\n"
  puts eval(line)
end
puts "Good bye" # 제어권이 여기로 옮겨진다.

# 5.5.3 next
# next 문은 반복이나 반복자의 1회분 처리를 거기서 종료하고 다음 처리를 개시한다.
while(line = gets.chop) # 반복은 여기서 시작
  next if line[0,1] == '#' # 현재 줄이 주석이라면 다음 줄로
  puts eval(line)
  # next문이 실행되면 제어는 여기로 이동.
end

squareroots = data.collect do |x|
  next 0 if x < 0 # 음수는 0을 반환
  Math.sqrt(x)
end

squareroots2 = data.collect do |x|
  if (x < 0) then 0 else Math.sqrt(x) end
end














































