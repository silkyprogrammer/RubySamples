require 'net/pop'

mail_server = Net::POP3.new('pop.gmail.com')

begin
	mail_server.start('amby11in@gmail.com','hari1984')
	if mail_server.mails.empty?
		puts "No mails"
	else
		puts "#{mail_server.mails.length} mails waiting"
	end
rescue
	puts "Mail error"
end
