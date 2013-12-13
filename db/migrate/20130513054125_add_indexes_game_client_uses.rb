class AddIndexesGameClientUses < ActiveRecord::Migration
  def change
    add_index :game_client_uses, :user_id
    add_index :game_client_uses, :game_client_id
  end
end
