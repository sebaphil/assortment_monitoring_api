class CreateSubFamilies < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_families do |t|
      t.integer :sub_family_id
      t.string :name

      t.timestamps
    end
  end
end
