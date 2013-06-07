class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :title
      t.string :season
      t.date :premier
      t.timestamps
    end
  end
end
