# each는 컬렉션에 포함된 각 요소를 인수로 사용해서 부속 블록을 호출합니다.
# for루프는 each 메서드를 가진 객체의 반복처리에만 사용합니다.
[1,2,3].each {|x| print x}
[1,2,3].each {|x| print x}
(1..3).each {|x| print x}
(1..3).each {|x| print x}

# 루비의 IO 클래스는 input/output 객체에서 읽은 줄을 인수로 블록을 실행하는 each를 정의합니다.
# 따라서 루비에서는 다음과 같은 코드로 파일의 각 줄을 처리할 수 있습니다.
File.open(filename) do |f|    # 지정한 파일을 열어서 f로 넘김 지정한 파일을 열어서 f로 넘김
  f.each {|line| print line}  # f 안의 각 줄을 출력
                              # 블록을 종료하고 파일을 닫음
end

File.open(filename) do |f|
  f.each_with_index do |line,number |
    print "#{number}: #{line}"
  end
end

File.open(filename) do |f|
  f.each_with_index do |line, number|
    print "#{number}: #{line}"
  end
end

# 제일 많이 사용되는 Enumerable 반복자는 collect, select, reject, inject처럼 운율이 맞는 메서드
squares = [1,2,3].collect {|x| x*x} # => [1,4,9]