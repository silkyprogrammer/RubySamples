# class BadException < RunTimeError
# 	# pass
# end

# class Person
# 	def initialize(name)
# 		raise BadException, "No Name present" if name.empty?
# 	end
# end

# p = Person.new("Hari")

begin
	10/0
rescue Exception => e
	puts "Your code sucks!!"
	puts e.class
end

catch(:finish) do
	1000.times do
		x = rand(1000)
		throw :finish if x==123
	end
	puts "Generated random numbers without 123!"
end

def generate_random_numbers_except_234
	x=rand(1000)
	throw :finish if x==234
end

catch(:finish) do
	1000.times {generate_random_numbers_except_234}
	puts "Generated everything except 234!! you idiot"
end