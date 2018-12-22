# 클래스 이름의 첫 글자는 대문자여야 한다.
class Student
  #클래스 내에 멤버변수는 @ 기호를 사용하여 선언한다.
  @first_name
  @last_name
  @email
  @username
  @password

  # 디폴트로 toString 메서드가 적용되어 있다.
  def to_s
    "First name: #{@first_name}"

  end

end

#클래스의 객체를 생성하는 방법은??
mashrur = Student.new

# 해당 객체를 출력하면 객체가 생성된 메모리의 주소가 출력된다.
puts mashrur
#mashrur.first_name = "Mashrur"
#puts mashrur