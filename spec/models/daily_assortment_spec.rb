require 'rails_helper'

RSpec.describe DailyAssortment, type: :model do
  it {should validate_presence_of(:assortment_start_date)}
  it {should validate_presence_of(:article_id)}
  it {should validate_presence_of(:store_id)}
  it {should validate_presence_of(:provisioning_start_date)}
  it {should validate_presence_of(:replenishment_start_date)}
  it {should validate_presence_of(:article_name)}
  it {should validate_presence_of(:sub_family_id)}
  it {should validate_presence_of(:substitute_article_id)}
  it {should validate_presence_of(:sub_category_id)}
end