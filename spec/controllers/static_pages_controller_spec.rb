require 'spec_helper'

describe StaticPagesController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'productos'" do
    it "returns http success" do
      get 'productos'
      response.should be_success
    end
  end

  describe "GET 'compania'" do
    it "returns http success" do
      get 'compania'
      response.should be_success
    end
  end

  describe "GET 'comprar'" do
    it "returns http success" do
      get 'comprar'
      response.should be_success
    end
  end

  describe "GET 'contacto'" do
    it "returns http success" do
      get 'contacto'
      response.should be_success
    end
  end

end
