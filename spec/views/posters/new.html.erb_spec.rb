require 'spec_helper'

describe "posters/new" do
  before(:each) do
    assign(:poster, stub_model(Poster,
      :name => "MyString",
      :password => "MyString"
    ).as_new_record)
  end

  it "renders new poster form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posters_path, :method => "post" do
      assert_select "input#poster_name", :name => "poster[name]"
      assert_select "input#poster_password", :name => "poster[password]"
    end
  end
end
