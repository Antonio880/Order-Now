require "rails_helper"

RSpec.describe DeliveryPeopleController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/delivery_people").to route_to("delivery_people#index")
    end

    it "routes to #new" do
      expect(get: "/delivery_people/new").to route_to("delivery_people#new")
    end

    it "routes to #show" do
      expect(get: "/delivery_people/1").to route_to("delivery_people#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/delivery_people/1/edit").to route_to("delivery_people#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/delivery_people").to route_to("delivery_people#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/delivery_people/1").to route_to("delivery_people#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/delivery_people/1").to route_to("delivery_people#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/delivery_people/1").to route_to("delivery_people#destroy", id: "1")
    end
  end
end
