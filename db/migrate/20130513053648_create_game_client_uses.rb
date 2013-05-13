class CreateGameClientUses < ActiveRecord::Migration
  def change
    create_table :game_client_uses do |t|
      t.integer :user_id
      t.integer :game_client_id

      t.timestamps
    end
  end
end
