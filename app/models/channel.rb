class Channel < ActiveRecord::Base
	extend FriendlyId

	before_save :create_admin_hash
  before_save :default_values
  has_many :feedbacks
  
  friendly_id :slug_candidates, use: :slugged

  def should_generate_new_friendly_id?
    new_record?
  end

  # Try building a slug based on the following fields in
  # increasing order of specificity.
  def slug_candidates
    [
      :name,
      [:name, :created_at]
    ]
  end


  private 

  def create_admin_hash
  	self.sec_hash = SecureRandom.hex 
  end

  def default_values
		self.img_hash ||= 'default_img'
	end
end