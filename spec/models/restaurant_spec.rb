require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  context 'associations' do
    it { should have_many(:dishes) }
    it { should have_many(:orders) }
    it { should belong_to(:address) }
  end
end
