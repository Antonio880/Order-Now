require 'rails_helper'

RSpec.describe User, type: :model do
  context 'associations' do
    it { should validate_presence_of(:email) }
    it { should have_many(:addresses) }
    it { should have_secure_password }
    it { should have_many(:orders) }
    let(:user) { create(:user) }
    
    # let(:restaurant) { create(:restaurant) }
    # let(:delivery_person) { create(:delivery_person) }
    # let(:address) { create(:address) }
    # let(:payment) { create(:payment) }
  
    # it 'creates an order with valid associations' do
    #   order = Order.create(
    #     user: user,
    #     payment: payment,
    #     restaurant: restaurant,
    #     delivery_person: delivery_person,
    #     address: address,
    #     status: 'pending',
    #     total_price: 100
    #   )
    #   expect(user.orders).to include(order)
    # end
  end
end
