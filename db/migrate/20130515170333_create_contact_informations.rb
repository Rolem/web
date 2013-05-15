class CreateContactInformations < ActiveRecord::Migration
  def change
    create_table :contact_informations do |t|
      t.string :full_name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
