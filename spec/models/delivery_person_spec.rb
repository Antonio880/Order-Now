require 'rails_helper'

RSpec.describe DeliveryPerson, type: :model do
  context 'associations' do
    it { should have_many(:orders) }
    it { should have_many(:addresses).through(:orders) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:phone) }
  end
end
