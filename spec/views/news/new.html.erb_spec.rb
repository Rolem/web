require 'spec_helper'

describe "news/new" do
  before(:each) do
    assign(:news, stub_model(News,
      :title => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :tags => "MyString"
    ).as_new_record)
  end

  it "renders new news form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => news_index_path, :method => "post" do
      assert_select "input#news_title", :name => "news[title]"
      assert_select "textarea#news_description", :name => "news[description]"
      assert_select "input#news_image_url", :name => "news[image_url]"
      assert_select "input#news_tags", :name => "news[tags]"
    end
  end
end
