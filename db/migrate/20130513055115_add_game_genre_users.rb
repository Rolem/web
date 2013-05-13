class AddGameGenreUsers < ActiveRecord::Migration
  def change
    add_column :users, :game_genre, :string
  end
end
