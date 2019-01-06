# 5.4 블록


# 5.4.1 블록 구문
# 블록은 단독으로 쓰이지 않는다. 메서드 호출 뒤에 따라오는 형태로만 쓰입니다.
# 하지만, 메서드 호출의 다음이라면 블록은 어디에나 쓰일 수 있다.
# 블록은 중괄호나 do, end 키워드로 버무이가 정해집니다.

# 1에서 10까지 출력
1.upto(10) {|x| puts x} # 호출과 중괄호로 둘러싼 블록이 같은 줄
1.upto(10) {|x| puts x} # 호출과 중괄호로 둘러싼 블록이 같은 줄
1.upto(10) do |x| # do/end로 나뉜 블록
  puts x
end
1.upto(10) do |x| # do/end로 나뉜 블록
  puts x
end

1.upto(10)      # 블록 지정 없음
#  {|x| puts x}  # 구문 에러 : 호출문 뒤 이외의 위치에 블록이 존재

# 블록이 한 줄에 들어갈 크기면 중괄호를 쓰고 블록이 여러 줄이 되면 do, end를 쓰는 습관이 있다.
# 메서드 인수를 괄호로 둘러싸는 것을 생략해서 블록을 중괄호로 둘러싸면 블록은 메서드 자체가 아니라
# 메서드 인수에 대응하게 됩니다.
1.upto(3) {|x| puts x} # 괄호와 중괄호 조합은 동작함.
1.upto(3) do |x| puts x end # 괄호는 없지만 블록을 do, end로 범위 설정.
# 1.upto 3 do {|x| puts x} # 구문 에러 : 3에 블록을 넘김.

# 블록은 메서드와 마찬가지로 매개변수를 취득합니다. 블록 매개변수는 쉼표로 나뉘고 | 로 둘러싸지만
# 생략하면 메서드 매개변수와 무척 닮았습니다.
# Hash.each 반복자는 블록에 두 인수를 넘김
hash.each do |key, value| # Hash 안에 있는 (key, value) 쌍마다
  puts "#{key}: #{value}" # key와 value를 출력
end                       # 블록 끝

hash.each do |key, value|
  puts "#{key}: #{value}"
end

hash.each do |key, value|
  puts "#{key}: #{value}"
end

# 5.4.2 블록의 값.
# 반복자 메서드는 블록에 값을 넘기지만, 블록에서 반환된 값은 무시되고 있다.
# 하지만 늘 그런것은 아니다. Array.sort 메서드를 생각해보면
# 이 메서드를 호출할 때 블록을 붙이면 반복자는 블록에 요소의 쌍을 넘긴다.
# 그리고 블록은 이것을 정렬한다.

# 블록은 인수로 두 단어를 받아서 상대적인 순서를 '돌려줌'
words.sort! {|x, y| y <=> x}

# 보통 블록에서 값을 되돌려줄 때 return 키워드를 쓰지 않습니다. 블록 속에서
# return을 쓰면 블록을 둘러싼 메서드가 끝나게 됩니다.
# 여러개의 값을 돌려주고 싶을 때는 return 대신 next를 씁니다.
array.collect do |x|
  next 0 if x == nil # x가 nil이면 도중에 돌아감
  next x, x*x   # 두 값을 반환
end

array.collect do |x|
  if x == nil
    0
  else
    [x, x*x]
  end
end

# 5.4.3 블록과 변수 범위
# 블록은 새로운 변수

