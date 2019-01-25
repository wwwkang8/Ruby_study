
require 'csv'
require_relative 'book_in_stock'

class CsvReader
  def initialize
    @books_in_stock = []
  end

  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      @books_in_stock << BookInStock.new(row["ISBN"], row["Price"])
    end
  end

  def total_value_in_stock # 뒤에서 inject를 통해서 어떻게 합계를 구하는지 살펴본다.
    sum = 0.0
    @books_in_stock.each {|book| sum+=book.price}
    sum
  end

  def number_of_each_isbn
    # ..
  end


end