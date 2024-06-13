require 'rails_helper'

RSpec.describe Address, type: :model do
  context 'associations' do
    it { should have_many(:orders) }
    it { should belong_to(:user) }
  end

end
