require 'spec_helper'

describe "blogs/edit" do
  before(:each) do
    @blog = assign(:blog, stub_model(Blog,
      :title => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :tags => "MyString"
    ))
  end

  it "renders the edit blog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blogs_path(@blog), :method => "post" do
      assert_select "input#blog_title", :name => "blog[title]"
      assert_select "textarea#blog_description", :name => "blog[description]"
      assert_select "input#blog_image_url", :name => "blog[image_url]"
      assert_select "input#blog_tags", :name => "blog[tags]"
    end
  end
end
