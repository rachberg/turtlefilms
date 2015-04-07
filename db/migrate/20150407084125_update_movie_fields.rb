class UpdateMovieFields < ActiveRecord::Migration
  def change
  	add_column :movies, :duration, :integer
  	add_column :movies, :tribe, :string
  	remove_column :movies, :description
  end
end
