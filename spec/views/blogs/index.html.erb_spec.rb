require 'spec_helper'

describe "blogs/index" do
  before(:each) do
    assign(:blogs, [
      stub_model(Blog,
        :titulo => "Titulo",
        :autor => "Autor",
        :texto => "MyText",
        :imagen => "Imagen",
        :tags => ""
      ),
      stub_model(Blog,
        :titulo => "Titulo",
        :autor => "Autor",
        :texto => "MyText",
        :imagen => "Imagen",
        :tags => ""
      )
    ])
  end

  it "renders a list of blogs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Autor".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Imagen".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
