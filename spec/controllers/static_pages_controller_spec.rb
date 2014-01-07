require 'spec_helper'

describe StaticPagesController do

  describe "GET 'blog'" do
    it "returns http success" do
      get 'blog'
      response.should be_success
    end
  end

end
