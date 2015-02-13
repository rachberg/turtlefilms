class Movie < ActiveRecord::Base
	belongs_to :director, :class_name => Person
	belongs_to :producer, :class_name => Person
	belongs_to :screenwriter, :class_name => Person
end
