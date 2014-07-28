i=1
j=0
until i > 100000
	i*=2
	j+=1	
end
puts "i=#{i}, j=#{j}"

puts Dir::pwd