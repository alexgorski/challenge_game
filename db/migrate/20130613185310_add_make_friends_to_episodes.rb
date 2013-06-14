class AddMakeFriendsToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :not_make_friends, :integer
  end
end
