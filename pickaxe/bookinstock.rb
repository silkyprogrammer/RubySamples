class BookInStock
	attr_reader	:isbn
	attr_accessor	:price
	def initialize(isbn,price)
		@isbn = isbn
		@price = Float(price)
	end
end

# book = Bookinstock.new("isbn1",123.45)
# puts "ISBN #{book.isbn}"
# puts "Price #{book.price}"
# book.price = book.price*0.75
# puts "Price #{book.price}"

