class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :tags

      t.timestamps
    end
  end
end
