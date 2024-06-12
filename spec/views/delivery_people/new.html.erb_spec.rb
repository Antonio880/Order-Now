require 'rails_helper'

RSpec.describe "delivery_people/new", type: :view do
  before(:each) do
    assign(:delivery_person, DeliveryPerson.new(
      name: "MyString",
      phone: "MyString",
      vehicle_type: "MyString"
    ))
  end

  it "renders new delivery_person form" do
    render

    assert_select "form[action=?][method=?]", delivery_people_path, "post" do

      assert_select "input[name=?]", "delivery_person[name]"

      assert_select "input[name=?]", "delivery_person[phone]"

      assert_select "input[name=?]", "delivery_person[vehicle_type]"
    end
  end
end
