class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :total_points
      t.integer :roster_id
      t.timestamps
    end
  end
end
