require 'rails_helper'

RSpec.describe "restaurants/show", type: :view do
  before(:each) do
    assign(:restaurant, Restaurant.create!(
      address: nil,
      name: "Name",
      phone: "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Phone/)
  end
end
