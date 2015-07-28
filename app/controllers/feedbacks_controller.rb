# FeedbacksController is a Embedded Controller - in Channels
class FeedbacksController < ApplicationController

  # POST /feedbacks
  # POST /feedbacks.json
  def create
    @channel_id = feedback_params[:channel_id]
    @channel = Channel.find(@channel_id)

    @feedback = Feedback.new(feedback_params)
    if @feedback.save
      flash[:success] = "Feedback created!"
      redirect_to @channel
    else
      flash[:error] = "Feedback not Created!"
      render @channel
    end
  end


  private

    def feedback_params
      params.require(:feedback).permit(:content, :email, :channel_id, :name)
    end
end
