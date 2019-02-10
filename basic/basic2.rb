class BookInStock

    # 심벌은 단순히 이름을참조할 때 사용할 수 있는 편리한 방법
    # :isbn은 isbn이라는 이름을 지칭하며, 콜론 없이 isbn을 사용하면 이는 변수값 자체를 의미한다.
    attr_reader :isbn
    attr_accessor :price

    def initialize(isbn, price)
      @isbn = isbn
      @price = Float(price)
    end

    def price=(value)
      @price = value
    end

    def price_in_cents
      Integer(price*100+0.5)
    end

    def price_in_cents=(cents)
      @price = cents/ 100.0
    end

end

book = BookInStock.new("isbn1", 12.34)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"

book.price = book.price*0.75

puts "New price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"

class CsvReader
  def initialize
    @books_in_stock = []
  end

  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      @books_in_stock << BookInStock.new(row["ISBN"], row["Price"])
    end
  end
end
