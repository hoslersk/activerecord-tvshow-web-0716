class AddSeasonToShows < ActiveRecord::Migration

  def change
    add_column :shows, :season, :string
    # add a column, season, to the shows table. The datatype of this column is string.
  end

end
