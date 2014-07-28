require 'rubygems'
require 'action_mailer'

class Emailer < ActionMailer::Base
	def test_mail(email_address, email_body)
		recipients(email_address)
		from "me@privacy.net"
		subject "This is a test mail"
		body email_body
	end
end

Emailer.deliver_test_email('amby11in@gmail.com','This is a test mail')