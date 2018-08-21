FactoryBot.define do
  factory :sub_category do
    sub_category_id {Faker::Number.number(6)}
    name {Faker::RickAndMorty.character}
  end
end