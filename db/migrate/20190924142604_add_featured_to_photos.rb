class AddFeaturedToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :is_feature, :boolean
  end
end
