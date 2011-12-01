require "spec_helper"

describe ValuesController do
  describe "routing" do

    it "routes to #index" do
      get("/filters/1/values").should route_to("values#index", filter_id: "1")
    end

    it "routes to #new" do
      get("/filters/1/values/new").should route_to("values#new", filter_id: "1")
    end

    it "routes to #edit" do
      get("/filters/1/values/1/edit").should route_to("values#edit", id: "1", filter_id: "1")
    end

    it "routes to #create" do
      post("/filters/1/values").should route_to("values#create", filter_id: "1")
    end

    it "routes to #update" do
      put("/filters/1/values/1").should route_to("values#update", id: "1", filter_id: "1")
    end

    it "routes to #destroy" do
      delete("/filters/1/values/1").should route_to("values#destroy", id: "1", filter_id: "1")
    end

  end
end
