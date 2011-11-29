require "spec_helper"

describe ProductsController do
  describe "routing" do

    it "routes to #index" do
      get("sections/1/products").should route_to("products#index", section_id: "1")
    end

    it "routes to #new" do
      get("sections/1/products/new").should route_to("products#new", section_id: "1")
    end

    it "routes to #show" do
      get("sections/1/products/1").should route_to("products#show", id: "1", section_id: "1")
    end

    it "routes to #edit" do
      get("sections/1/products/1/edit").should route_to("products#edit", id: "1", section_id: "1")
    end

    it "routes to #create" do
      post("sections/1/products").should route_to("products#create", section_id: "1")
    end

    it "routes to #update" do
      put("sections/1/products/1").should route_to("products#update", id: "1", section_id: "1")
    end

    it "routes to #destroy" do
      delete("sections/1/products/1").should route_to("products#destroy", id: "1", section_id: "1")
    end

  end
end
