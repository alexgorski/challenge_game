class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.integer :league_id
      t.integer :user_id
      t.integer :total_points
      t.timestamps
    end
  end
end
