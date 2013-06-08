class AddSeasonIdToLeague < ActiveRecord::Migration
  def change
    add_column :leagues, :season_id, :integer
    remove_column :leagues, :season_id
  end
end
