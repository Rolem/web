class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.string :model
      t.string :city
      t.string :place
      t.date :date_of_purchase
      t.string :guarantee_number
      t.integer :user_id

      t.timestamps
    end
  end
end
