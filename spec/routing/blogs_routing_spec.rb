require "spec_helper"

describe BlogsController do
  describe "routing" do

    it "routes to #index" do
      get("/blogs").should route_to("blogs#index")
    end

    it "routes to #new" do
      get("/blogs/new").should route_to("blogs#new")
    end

    it "routes to #show" do
      get("/blogs/1").should route_to("blogs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/blogs/1/edit").should route_to("blogs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/blogs").should route_to("blogs#create")
    end

    it "routes to #update" do
      put("/blogs/1").should route_to("blogs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/blogs/1").should route_to("blogs#destroy", :id => "1")
    end

  end
end
