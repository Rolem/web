require 'spec_helper'

describe "posters/edit" do
  before(:each) do
    @poster = assign(:poster, stub_model(Poster,
      :name => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit poster form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posters_path(@poster), :method => "post" do
      assert_select "input#poster_name", :name => "poster[name]"
      assert_select "input#poster_password", :name => "poster[password]"
    end
  end
end
