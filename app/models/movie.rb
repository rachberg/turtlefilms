class Movie < ActiveRecord::Base

	has_and_belongs_to_many :jobs


	# has_many :directors
	# has_many :producers
	# has_many :screenwriters

	# has_many :movie_directors,  :through => :directors, :source => 'Person'
	# has_many :movie_producers, :through => :producers, :source => 'Person'
	# has_many :movie_screenwriters,  :through => :screenwriters, :source => 'Person'
end
