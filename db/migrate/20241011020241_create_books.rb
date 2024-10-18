class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    drop_table :books

    create_table :books do |t|
      t.integer :book_id
      t.string :title
      t.string :author_name
      t.string :publisher
      t.integer :publication_year
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
