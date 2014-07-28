ls = IO.popen("dir", "r")
while line = ls.gets
	puts line
end
ls.close

require 'Win32API'
title='My Application'
text = "Hello World"
# Win32API.new('user32','MessageBox',%w{L P P L}, 'I').call(0,text,title,0)
dialog = Win32API.new('user32','MessageBox',%w{L P P L})
result = dialog.call(0,text,title,1)
puts result
case result
	when 1:
		puts "clicked OK"
	when 2:
		puts "clicked CANCEL"
	else:
		puts "clicked something ELSE"
end


