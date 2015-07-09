class Channel < ActiveRecord::Base
	extend FriendlyId

	before_save :create_admin_hash
  before_save :default_values

  friendly_id :name, use: :slugged

  def should_generate_new_friendly_id?
    new_record?
  end


  private 

  def create_admin_hash
  	self.sec_hash = SecureRandom.hex 
  end

  def default_values
		self.img_hash ||= 'default_img'
	end
end