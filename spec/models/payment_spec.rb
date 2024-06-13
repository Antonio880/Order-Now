require 'rails_helper'

RSpec.describe Payment, type: :model do
  context 'associations' do
    it { should belong_to(:order) }
    it { should have_many(:orders) }
  end
end
