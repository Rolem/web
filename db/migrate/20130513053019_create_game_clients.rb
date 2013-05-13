class CreateGameClients < ActiveRecord::Migration
  def change
    create_table :game_clients do |t|
      t.string :name

      t.timestamps
    end
  end
end
