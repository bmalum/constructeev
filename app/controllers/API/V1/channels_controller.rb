module Api
  module V1
    class ChannelsController < ApplicationController
      respond_to :json
      protect_from_forgery with: :null_session

      def index
        respond_with Channel.all
      end

      # POST /channels
      # POST /channels.json
      def create
        @channel = Channel.new(channel_params)

        respond_to do |format|
          if @channel.save
            ChannelMailer.welcome_email(@channel).deliver_now
			format.json { render json: @channel }
          else
            render_block
          end
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_channel
        @channel = Channel.friendly.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def channel_params
        params.require(:channel).permit(:name, :img_hash, :sec_hash, :slug, :email)
      end

      def render_block
        format.html { render :new }
        format.json { render json: @channel.errors, status: :unprocessable_entity }
      end

    end
  end
end
