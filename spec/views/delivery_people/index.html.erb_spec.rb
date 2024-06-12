require 'rails_helper'

RSpec.describe "delivery_people/index", type: :view do
  before(:each) do
    assign(:delivery_people, [
      DeliveryPerson.create!(
        name: "Name",
        phone: "Phone",
        vehicle_type: "Vehicle Type"
      ),
      DeliveryPerson.create!(
        name: "Name",
        phone: "Phone",
        vehicle_type: "Vehicle Type"
      )
    ])
  end

  it "renders a list of delivery_people" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Vehicle Type".to_s), count: 2
  end
end
