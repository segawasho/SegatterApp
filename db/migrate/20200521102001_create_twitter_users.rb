class CreateTwitterUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :twitter_users do |t|
      t.string :uid
      t.string :nickname
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
