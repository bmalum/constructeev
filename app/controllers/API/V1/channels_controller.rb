module Api
	module V1
	class ChannelsController < ApplicationController
		respond_to :json

		def index 
			respond_with Channel.all
		end
	end
	end
end
