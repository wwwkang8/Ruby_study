# 클래스 이름의 첫 글자는 대문자여야 한다.
class Student
  attr_accessor :first_name, :last_name, :email, :username
  #attr_reader :username  #getter만 사용할 수 있도록 하는 메서드
  #위의 코드는 모든 멤버변수에 대해 getter와 Setter를 설정한다.
  # 롬복과 같은 기능을 하는 것 같다.

  #클래스 내에 멤버변수는 @ 기호를 사용하여 선언한다.
=begin
  @first_name
  @last_name
  @email
  @username
  @password
=end
  
  #이것이 초기화 하는 메서드
  def initialize(firstname, lastname, username, email, password)
    @first_name=firstname
    @last_name=lastname
    @username=username
    @email=email
    @password=password
  end

=begin
  #Setter
  def first_name=(name)
    @first_name=name
  end


  #Getter
  def first_name
    @first_name
  end
=end


  # 디폴트로 toString 메서드가 적용되어 있다.
  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{username}, Email: #{email}"
  end

end

#클래스의 객체를 생성하는 방법은??
mashrur = Student.new("Jake","Kang","dfdf","wwwkang8@gmai.cpm", "pass")
john = Student.new("asdf","asf","asdf","wwwkang8@gmai.cpm", "pass")

# 해당 객체를 출력하면 객체가 생성된 메모리의 주소가 출력된다.
puts mashrur
puts john

# marshrur의 last_name변수에 john의 last_name을 할당
mashrur.last_name = john.last_name
puts "Mashrur is altered"

# last_name이 변경된 것이 출력
puts mashrur

