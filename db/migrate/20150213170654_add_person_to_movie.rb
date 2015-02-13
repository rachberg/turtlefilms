class AddPersonToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :producer_id, :integer, references: :people
    add_column :movies, :director_id, :integer, references: :people
    add_column :movies, :screenwriter_id, :integer, references: :people
end
end
