class AddEmailToChannel < ActiveRecord::Migration
  def change
    add_column :channels, :email, :string
  end
end
