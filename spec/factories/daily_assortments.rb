FactoryBot.define do
  factory :daily_assortment do
    assortment_start_date {Faker::Date.Backward(365)}
    article_id {Faker::Number.number(6)}
    store_id {Faker::Number.number(6)}
    in_cluster_only_because_of_promotion {Faker::Boolean.boolean(0.5)}
    in_elimination {Faker::Boolean.boolean(0.5)}
    provisioning_start_date {Faker::Date.Backward(365)}
    replenishment_start_date {Faker::Date.Backward(365)}
    is_replenishable {Faker::Boolean.boolean(0.5)}
    article_name {Faker::Food.fruits}
    sub_family_id {Faker::Number.number(6)}
    substitute_article_id {Faker::Number.number(6)}
    sub_category_id {Faker::Number.number(6)}
    is_article_without_price {Faker::Boolean.boolean(0.5)}
    is_orderable_and_loadable {Faker::Boolean.boolean(0.5)}
  end
end
