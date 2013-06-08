class RemoveRosterIdFromPlayer < ActiveRecord::Migration
  def change
    remove_column :players, :roster_id
  end
end
