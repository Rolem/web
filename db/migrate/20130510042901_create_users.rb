class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :gender
      t.date :date_of_birth
      t.integer :social_level
      t.string :city

      t.timestamps
    end
  end
end
