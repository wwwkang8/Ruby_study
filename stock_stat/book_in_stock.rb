class BookInStock

  # 심벌은 단순히 이름을참조할 때 사용할 수 있는 편리한 방법
  # :isbn은 isbn이라는 이름을 지칭하며, 콜론 없이 isbn을 사용하면 이는 변수값 자체를 의미한다.
  attr_reader :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

end