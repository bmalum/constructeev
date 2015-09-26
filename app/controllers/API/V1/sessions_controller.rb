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
					session = {:valid => true, :channel => channel.name}
					respond_to do |format|
						format.html
						format.json { render json: session }
					end
					session[:valid] = true
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
