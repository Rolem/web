require 'spec_helper'

describe "blogs/new" do
  before(:each) do
    assign(:blog, stub_model(Blog,
      :titulo => "MyString",
      :autor => "MyString",
      :texto => "MyText",
      :imagen => "MyString",
      :tags => ""
    ).as_new_record)
  end

  it "renders new blog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blogs_path, :method => "post" do
      assert_select "input#blog_titulo", :name => "blog[titulo]"
      assert_select "input#blog_autor", :name => "blog[autor]"
      assert_select "textarea#blog_texto", :name => "blog[texto]"
      assert_select "input#blog_imagen", :name => "blog[imagen]"
      assert_select "input#blog_tags", :name => "blog[tags]"
    end
  end
end
