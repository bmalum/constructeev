class Feedback < ActiveRecord::Base
  belongs_to :channel
  validates :channel_id, presence: true
end
