require "spec_helper"

describe PostersController do
  describe "routing" do

    it "routes to #index" do
      get("/posters").should route_to("posters#index")
    end

    it "routes to #new" do
      get("/posters/new").should route_to("posters#new")
    end

    it "routes to #show" do
      get("/posters/1").should route_to("posters#show", :id => "1")
    end

    it "routes to #edit" do
      get("/posters/1/edit").should route_to("posters#edit", :id => "1")
    end

    it "routes to #create" do
      post("/posters").should route_to("posters#create")
    end

    it "routes to #update" do
      put("/posters/1").should route_to("posters#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/posters/1").should route_to("posters#destroy", :id => "1")
    end

  end
end
