require 'rails_helper'

RSpec.describe "restaurants/edit", type: :view do
  let(:restaurant) {
    Restaurant.create!(
      address: nil,
      name: "MyString",
      phone: "MyString"
    )
  }

  before(:each) do
    assign(:restaurant, restaurant)
  end

  it "renders the edit restaurant form" do
    render

    assert_select "form[action=?][method=?]", restaurant_path(restaurant), "post" do

      assert_select "input[name=?]", "restaurant[address_id]"

      assert_select "input[name=?]", "restaurant[name]"

      assert_select "input[name=?]", "restaurant[phone]"
    end
  end
end
