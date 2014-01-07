require 'spec_helper'

describe "blogs/show" do
  before(:each) do
    @blog = assign(:blog, stub_model(Blog,
      :titulo => "Titulo",
      :autor => "Autor",
      :texto => "MyText",
      :imagen => "Imagen",
      :tags => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titulo/)
    rendered.should match(/Autor/)
    rendered.should match(/MyText/)
    rendered.should match(/Imagen/)
    rendered.should match(//)
  end
end
