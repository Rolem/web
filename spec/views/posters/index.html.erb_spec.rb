require 'spec_helper'

describe "posters/index" do
  before(:each) do
    assign(:posters, [
      stub_model(Poster,
        :name => "Name",
        :password => "Password"
      ),
      stub_model(Poster,
        :name => "Name",
        :password => "Password"
      )
    ])
  end

  it "renders a list of posters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
