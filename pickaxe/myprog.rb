puts "Hello World"
puts "It is now #{Time.now}"

puts "And good night, \n Grandma"

puts 'And good night, \n Grandma'

def sleep(value)
	puts "And good night, #{value.capitalize}"
end
sleep("prince")

today = Time.now
puts today.thursday?