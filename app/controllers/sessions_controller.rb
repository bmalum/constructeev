class SessionsController < ApplicationController

  def new
  end

  def create
    channel = Channel.authenticate(params[:sec_hash])
  	if channel
    	session[:channel_id] = channel.id
    	redirect_to channel, :notice => "Logged in!"
  	else
    	flash.now.alert = "Invalid email or password"
    	render "new"
  	end
  end

 def destroy
  session[:channel_id] = nil
  redirect_to (login_path :only_path => true), :notice => "Logged out!"
 end

end
