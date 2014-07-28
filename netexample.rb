require 'net/http'
url = URI.parse('http://www.cisco.com')
response = Net::HTTP.start(url.host, url.port) do |http|
	http.get(url.path)
end
content = response.body

# Net::HTTP.get_print('www.cisco.com','/')