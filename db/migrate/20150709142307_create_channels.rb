class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :name
      t.string :img_hash
      t.string :sec_hash
      t.string :slug

      t.timestamps null: false
    end
    add_index :channels, :slug, unique: true
  end
end
