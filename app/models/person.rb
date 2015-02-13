class Person < ActiveRecord::Base
	has_many :directed_movies, :foreign_key => 'director_id', :class_name => Movie
	has_many :produced_movies, :foreign_key => 'producer_id', :class_name => Movie
	has_many :written_movies, :foreign_key => 'screenwriter_id', :class_name => Movie
end
