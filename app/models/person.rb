	class Person < ActiveRecord::Base

	has_and_belongs_to_many :jobs

	# has_many :directions
	# has_many :productions
	# has_many :writings

	# has_many :directed_movies,  :through => :directions, :source => 'Movie'
	# has_many :produced_movies, :through => :productions, :source => 'Movie'
	# has_many :written_movies,  :through => :writings, :source => 'Movie'

	# has_many :directed_movies, :foreign_key => 'director_id', :class_name => Movie
	# has_many :produced_movies, :foreign_key => 'producer_id', :class_name => Movie
	# has_many :written_movies, :foreign_key => 'screenwriter_id', :class_name => Movie
end
