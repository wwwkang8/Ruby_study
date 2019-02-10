def double_render
  @book = Book.find(6)
  if @book.reviews.empty?
    render 'simple_info'
  end
  render 'details_info'
end


