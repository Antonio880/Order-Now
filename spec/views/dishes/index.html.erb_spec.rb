require 'rails_helper'

RSpec.describe "dishes/index", type: :view do
  before(:each) do
    assign(:dishes, [
      Dish.create!(
        restaurant: nil,
        name: "Name",
        price: 2.5
      ),
      Dish.create!(
        restaurant: nil,
        name: "Name",
        price: 2.5
      )
    ])
  end

  it "renders a list of dishes" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
  end
end
