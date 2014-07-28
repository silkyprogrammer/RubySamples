require 'net/http'

Net::HTTP.start('www.rubyinside.com') do |http|
	req = Net::HTTP::Get.new('/test.txt')
	puts http.request(req).body
end

url = URI.parse('http://browserspy.dk/password-ok.php')
Net::HTTP.start(url.host,url.port) do |http|
	req = Net::HTTP::Get.new(url.path)
	req.basic_auth('test','test')
	puts http.request(req).body
end
