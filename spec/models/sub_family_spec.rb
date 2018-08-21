require 'rails_helper'

RSpec.describe SubFamily, type: :model do
  it {should validate_presence_of(:sub_family_id)}
  it {should validate_presence_of(:name)}
end
