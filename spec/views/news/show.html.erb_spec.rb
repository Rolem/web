require 'spec_helper'

describe "news/show" do
  before(:each) do
    @news = assign(:news, stub_model(News,
      :title => "Title",
      :description => "MyText",
      :image_url => "Image Url",
      :tags => "Tags"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Image Url/)
    rendered.should match(/Tags/)
  end
end
