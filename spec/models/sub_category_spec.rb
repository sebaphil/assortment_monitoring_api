require 'rails_helper'

RSpec.describe SubCategory, type: :model do
  it {should validate_presence_of(:sub_category_id)}
  it {should validate_presence_of(:name)}
end
