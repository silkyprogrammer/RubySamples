require 'win32ole'

web_browser = WIN32OLE.new('InternetExplorer.Application')
web_browser.visible  = true
web_browser.navigate('http://www.google.com')

while web_browser.ReadyState != 4
	sleep 1
end

puts "Page Loaded"