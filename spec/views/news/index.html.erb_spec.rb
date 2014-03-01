require 'spec_helper'

describe "news/index" do
  before(:each) do
    assign(:news, [
      stub_model(News,
        :title => "Title",
        :description => "MyText",
        :image_url => "Image Url",
        :tags => "Tags"
      ),
      stub_model(News,
        :title => "Title",
        :description => "MyText",
        :image_url => "Image Url",
        :tags => "Tags"
      )
    ])
  end

  it "renders a list of news" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
  end
end
