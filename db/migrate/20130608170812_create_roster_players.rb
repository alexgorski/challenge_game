class CreateRosterPlayers < ActiveRecord::Migration
  def change
    create_table :roster_players do |t|
      t.string :name
      t.integer :total_points
      t.integer :roster_id
      t.timestamps
    end
  end
end
