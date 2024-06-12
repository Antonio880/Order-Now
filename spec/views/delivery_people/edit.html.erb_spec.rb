require 'rails_helper'

RSpec.describe "delivery_people/edit", type: :view do
  let(:delivery_person) {
    DeliveryPerson.create!(
      name: "MyString",
      phone: "MyString",
      vehicle_type: "MyString"
    )
  }

  before(:each) do
    assign(:delivery_person, delivery_person)
  end

  it "renders the edit delivery_person form" do
    render

    assert_select "form[action=?][method=?]", delivery_person_path(delivery_person), "post" do

      assert_select "input[name=?]", "delivery_person[name]"

      assert_select "input[name=?]", "delivery_person[phone]"

      assert_select "input[name=?]", "delivery_person[vehicle_type]"
    end
  end
end
