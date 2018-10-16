class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :quality
      t.integer :cleanliness
      t.integer :service
      t.integer :value
      t.string :content
      t.integer :restaurant_id
      t.integer :user_id
      t.timestamps
    end
  end
end
