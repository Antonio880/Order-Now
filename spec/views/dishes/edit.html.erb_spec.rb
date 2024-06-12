require 'rails_helper'

RSpec.describe "dishes/edit", type: :view do
  let(:dish) {
    Dish.create!(
      restaurant: nil,
      name: "MyString",
      price: 1.5
    )
  }

  before(:each) do
    assign(:dish, dish)
  end

  it "renders the edit dish form" do
    render

    assert_select "form[action=?][method=?]", dish_path(dish), "post" do

      assert_select "input[name=?]", "dish[restaurant_id]"

      assert_select "input[name=?]", "dish[name]"

      assert_select "input[name=?]", "dish[price]"
    end
  end
end
