class AddPlayerIDtoRosterPlayer < ActiveRecord::Migration
  def change
    add_column :roster_players, :player_id, :integer
  end
end
