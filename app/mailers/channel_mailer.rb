class ChannelMailer < ApplicationMailer
	default from: 'notifications@constructeev.com'
 	
 	# Welcome_email is a e-Mail sent to the Channel Admin, after setting up the channel
 	# and contains the Sec_Hash
  def welcome_email(channel)
    @channel = channel
    @url  = 'http://example.com/login'
    mail(to: @channel.email, subject: 'Welcome to your Constructeev Channel')
  end
end
