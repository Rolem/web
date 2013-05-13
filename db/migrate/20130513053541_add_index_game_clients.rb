class AddIndexGameClients < ActiveRecord::Migration
  def change
    add_index :game_clients, :name
  end
end
