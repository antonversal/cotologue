require "spec_helper"

describe FiltersController do
  describe "routing" do

    it "routes to #index" do
      get("/filters").should route_to("filters#index")
    end

    it "routes to #new" do
      get("/filters/new").should route_to("filters#new")
    end

    it "routes to #show" do
      get("/filters/1").should route_to("filters#show", :id => "1")
    end

    it "routes to #edit" do
      get("/filters/1/edit").should route_to("filters#edit", :id => "1")
    end

    it "routes to #create" do
      post("/filters").should route_to("filters#create")
    end

    it "routes to #update" do
      put("/filters/1").should route_to("filters#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/filters/1").should route_to("filters#destroy", :id => "1")
    end

  end
end
