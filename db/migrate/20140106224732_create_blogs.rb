class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :titulo
      t.string :autor
      t.text :texto
      t.string :imagen
      t.string :tags

      t.timestamps
    end
  end
end
