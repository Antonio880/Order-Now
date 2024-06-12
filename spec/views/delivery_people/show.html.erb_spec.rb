require 'rails_helper'

RSpec.describe "delivery_people/show", type: :view do
  before(:each) do
    assign(:delivery_person, DeliveryPerson.create!(
      name: "Name",
      phone: "Phone",
      vehicle_type: "Vehicle Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Vehicle Type/)
  end
end
