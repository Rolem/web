class AddIndexReceipt < ActiveRecord::Migration
  def change
    add_index :receipts, :user_id
  end
end
