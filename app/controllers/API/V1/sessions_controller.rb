module Api
	module V1
		class SessionsController < ApplicationController
			protect_from_forgery with: :null_session


			respond_to :json

			def index
				respond_to do |format|
					format.html
					format.json { render json: session }
				end
			end

			def create
				channel = Channel.authenticate(params[:sec_hash])
				if channel
					session[:channel_id] = channel.id
					test = session.to_json
					#session = {:valid => true, :channel => channel.name}
					respond_to do |format|
						format.html
						format.json { render json: test }
					end
				else
					session[:valid] = false
					respond_to do |format|
						format.html
						format.json { render json: session }
					end
				end
			end
		end
	end
end
