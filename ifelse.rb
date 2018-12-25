
if exression
  # 나의 코드 작성
end

# x가 10보다 작으면 x를 증가
if x < 10   # 줄바꿈으로 나눈다.
  x+=1
end
if x<10 then x+=1 end # then으로 나눔

if x<10 then
  x+=1
end

# if문에 else 절을 넣어 조건이 만족되지 않았을 때 실행하는 코드를 지정할 수 있다.
if expression
  code
else
  code
end

# [5.1.1.1 else]
if data # 배열이 있으면
  data << x # 값을 추가한다
else # 아니라면 ..
  data = [x] # 새로운 배열을 만들고 값을 저장한다.
end # 조건문의 끝

# [5.1.1.2 elsif]
if expression1
  code
elsif expression2

elsif expression3

else

end
# 위에서부터 차례대로 true인게 출력이됩니다. true인 것이 출력이되면 조건문을 빠져나온다.
# elsif는 if와 닮았습니다. 식과 코드 사이에는 줄바꿈, 세미 콜론, then 키워드 중 어느 하나가 필요하다.

if x==1
  name="one"
elsif x==2
  name="two"
elsif x==3 then name = "three"
elsif x==4; name="four"
else
  name = "many"
end

#[5.1.1.3] 반환값
# 루비는 보통 문장이라고 불리는 조건 분기 구조를 포함해서 모든 것이 식입니다.
# if 문의 반환값은 실행된 코드의 마지막 식의 값이지만, 코드가 실행되지 않았을 때는
# nil을 반환하게됩니다.
# if 문이 식을 돌려주므로, 예를 들어 앞에서 소개한 다방향 조건 분기는 다음처럼
# 보기 좋게 바꿔 쓸 수 있습니다.

name = if x ==1 then "one"
       elsif x==2 then "two"
       elsif x==3 then "three"
       elsif x==4 then "four"
       elsif x==5 then "five"
       else "many"
       end

#[5.1.2] 변경자 if
# if를 일반적인 문장 형식으로 사용할 때는 루비 문법상 끝에 end 키워드를 반드시
# 붙여야 합니다. 하지만, 한 줄짜리 간단한 조건식이라면 end는 불편합니다. end가
# 필요한 것은 단순히 구문해석의 문제이므로 if 키워드 자체를 조건식으로 실행하는 코드의 구별자로 쓰면 됩니다.
if expression then code end

code if expression # expression이 참이면 code를 실행하라. 위의 문장과 동일하지만 간결해졌다.

puts message if message # message가 정의 되어있으면 message를 출력
# 위와 같은 구문이 실행될 때는 실행될 코드가 좀 더 강조되고 조건은 덜 강조됩니다.
# 조건이 단순하거나 대부분 참이 될 때 이것을 쓰면 코드가 읽기 쉬워집니다.
# 조건이 뒤에 있음에도 불구하고 조건이 먼저 실행이 됩니다. 조건을 평가한 값이 false나 nil 이외의 값이라면
# 코드는 실행되고 그 값이 변경된 식의 반환값으로 사용됩니다.

#[5.1.3] unless
=begin
unless는 문장으로도 변경자로도 if의 반대값입니다. 조건식이 false나 nil일 때만 코드를 실행합니다.
구문은 if와 닮았지만 elsif절을 쓸 수 없다는 것이 다릅니다.
=end

# 단방향 unless 문
unless condition
  code
end

# 양방향 unless 문
unless condition
  code
else
  code
end

# unless 변경자
code unless condition

# 객체 o가 nill이 아니면 o에서 to_s 메서드를 호출
s = unless o.nill?  # 줄바꿈 구별자
      o.to_s
    end
s = unless o.nil? then o.to_s end # then 구별자

# [5.1.4] case
=begin
case문은 다방향 조건 분기입니다. 이 문장에는 두 가지 형식이 있습니다. 단순한 형식은 if/elsif/else를 조금 바꾸어쓴 것.
=end

name = case
       when x==1 then "one"
       when x==2 then "two"
       when x==3 then "three"
       else "many"
       end
# case문은 true로 평가되는 것이 나올 때까지 적힌 순서대로 차례로 when 절을 확인합니다.
# true 인것을 찾으면 when과 다음 when 또는 else, end 사이에 있는 식을 평가합니다.
# 평가된 마지막 식이 case의 값이 됩니다.

case
when x==1, y==0 then "x is one or y is zero" # 알기 어려운 구문
when x==2 || y==1 then "x is two or y is one" # 좀 더 이해하기 쉽다
end

# case문을 switch 문처럼 사용하려면
# case 문과 Range 객체를 써서 2006년도 미국 소득세를 계산
tax = case income
      when 0..7550
        income*0.1
      when 7550..30650
        755+(income-7550)*0.15
      when 30650.74200
        4220+(income-30655)*0.25
      else
        97653+(income-336550)*0.35
      end