# spec/models/order_spec.rb
require 'rails_helper'

RSpec.describe Order, type: :model do
  
  it { should belong_to(:user) }
  it { should belong_to(:payment) }
  it { should belong_to(:restaurant) }
  it { should belong_to(:delivery_person) }
  it { should belong_to(:address) }

  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:total_price) }
  # let(:user) { create(:user) }
  # let(:payment) { create(:payment) }
  # let(:restaurant) { create(:restaurant) }
  # let(:delivery_person) { create(:delivery_person) }
  # let(:address) { create(:address) }

  # it 'creates an order with valid associations' do
  #   ActiveRecord::Base.transaction do
  #     order = Order.create!(
  #       user: user,
  #       payment: payment,
  #       restaurant: restaurant,
  #       delivery_person: delivery_person,
  #       address: address,
  #       status: 'pending',
  #       total_price: 100
  #     )

  #     expect(order).to be_valid
  #   end
  # end


  # it 'is invalid without a user' do
  #   order = Order.new(
  #     payment: payment,
  #     restaurant: restaurant,
  #     delivery_person: delivery_person,
  #     address: address,
  #     status: 'pending',
  #     total_price: 100
  #   )

  #   expect(order).not_to be_valid
  # end
end