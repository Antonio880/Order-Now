require 'rails_helper'

RSpec.describe Dish, type: :model do
  context 'associations' do
    it { should belong_to(:restaurant) }
  end
end
