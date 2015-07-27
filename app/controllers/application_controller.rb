class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_channel

	private

	def current_channel
	  @current_channel ||= Channel.find(session[:channel_id]) if session[:channel_id]
	end
end
