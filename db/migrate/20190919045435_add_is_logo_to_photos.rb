class AddIsLogoToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :is_logo, :boolean
  end
end
