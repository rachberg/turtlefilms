class FillOutMovies < ActiveRecord::Migration
  def change
  	add_column :movies, :language, :string
  	add_column :movies, :genre, :string
  	add_column :movies, :summary, :string
  	add_column :movies, :rt_rating, :integer
  	add_column :movies, :imdb_rating, :integer
  	add_column :movies, :image_uri, :string

  end
end
