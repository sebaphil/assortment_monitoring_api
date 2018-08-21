class CreateSubCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_categories do |t|
      t.integer :sub_category_id
      t.string :name

      t.timestamps
    end
  end
end
