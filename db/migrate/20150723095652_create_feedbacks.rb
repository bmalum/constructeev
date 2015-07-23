class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.text :content
      t.references :channel, index: true, foreign_key: true
      t.text :email
      t.text :name

      t.timestamps null: false
    end
        add_index :feedbacks, [:channel_id, :created_at]
  end
end
