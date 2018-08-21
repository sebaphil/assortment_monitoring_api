class CreateDailyAssortments < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_assortments do |t|
      t.date :assortment_start_date
      t.integer :article_id
      t.integer :store_id
      t.boolean :in_cluster_only_because_of_promotion
      t.boolean :in_elimination
      t.date :provisioning_start_date
      t.date :replenishment_start_date
      t.boolean :is_replenishable
      t.string :article_name
      t.integer :sub_family_id
      t.integer :substitute_article_id
      t.integer :sub_category_id
      t.boolean :is_article_without_price
      t.boolean :is_orderable_and_loadable

      t.timestamps
    end
  end
end
