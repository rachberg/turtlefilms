class CreateJobs < ActiveRecord::Migration
	def self.up
	    # Create the association table
	    create_table :jobs, :id => false do |t|
	    	t.integer :person_id, :null => false
	    	t.integer :movie_id, :null => false
	    	t.string :job_name
	    end
	    # Add table index
	    add_index :jobs, [:person_id, :movie_id], :unique => true
	end

	def self.down
		remove_index :jobs, :column => [:person_id, :movie_id]
		drop_table :jobs
	end
end
