class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.bigint :truck_id
      t.text :body
      t.integer :service_rating
      t.integer :value_rating
      t.integer :cleanliness_rating
      t.integer :food_rating
      t.float :average_rating
      t.bigint :user_id

      t.timestamps
    end
  end
end
