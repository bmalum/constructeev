class ChannelMailer < ApplicationMailer
	default from: 'notifications@constructeev.com'
 
  def welcome_email(channel)
    @channel = channel
    @url  = 'http://example.com/login'
    mail(to: @channel.email, subject: 'Welcome to your Constructeev Channel')
  end
end
