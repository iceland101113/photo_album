class AddLikeToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :like, :integer, default: 0
  end
end
