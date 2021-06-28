class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.string :img_url
      t.decimal :price
      t.string :url

      t.timestamps
    end
  end
end
