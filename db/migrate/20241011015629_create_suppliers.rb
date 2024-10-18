class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
      drop_table :suppliers

    create_table :suppliers do |t|
      t.integer :supplier_id
      t.string :supplier_name
      t.string :supplier_phone
      t.string :supplier_address

      t.timestamps
    end
  end
end
