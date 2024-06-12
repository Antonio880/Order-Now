require 'rails_helper'

RSpec.describe "dishes/show", type: :view do
  before(:each) do
    assign(:dish, Dish.create!(
      restaurant: nil,
      name: "Name",
      price: 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
  end
end
