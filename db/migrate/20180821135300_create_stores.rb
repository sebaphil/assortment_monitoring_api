class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.integer :cdc
      t.string :insegna
      t.string :insegna_new
      t.string :pdv
      t.string :regione

      t.timestamps
    end
  end
end
