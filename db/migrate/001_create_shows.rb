class CreateShows < ActiveRecord::Migration

  def change
    create_table :shows do |s|
      s.string :name
      s.string :network
      s.string :day
      s.integer :rating
      s.timestamps
    end
  end
  # The table should have name, network, day, and rating columns. Name, network and day have a datatype of string and rating has a datatype of integer.

end
