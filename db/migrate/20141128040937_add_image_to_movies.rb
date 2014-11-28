class AddImageToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :image, :string
    add_column :movies, :string, :string
  end
end
