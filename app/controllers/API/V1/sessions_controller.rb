module Api
	module V1
	class SessionsController < ApplicationController
		respond_to :json

		def index
			respond_with session
		end

		def create
    		channel = Channel.authenticate(params[:sec_hash])
  			if channel
    			session[:channel_id] = channel.id
    			session[:valid] = true
    			respond_with channel_id
  			else
  				session[:valid] = false
    			respond_with false
  			end
  		end
	end
	end
end
