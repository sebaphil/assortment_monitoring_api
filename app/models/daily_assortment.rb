class DailyAssortment < ApplicationRecord

  validates_presence_of :assortment_start_date, :article_id, :store_id, :provisioning_start_date,
                        :replenishment_start_date, :article_name, :sub_family_id,
                        :substitute_article_id, :sub_category_id
end
