class CreateTrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :trucks do |t|
      t.text :name
      t.text :bio
      t.text :tagline
      t.text :base_city
      t.text :phone
      t.text :email
      t.text :website
      t.text :facebook
      t.text :twitter
      t.text :instagram

      t.timestamps
    end
  end
end
