require 'rails_helper'

RSpec.describe "blogs/new", :type => :view do
  before(:each) do
    assign(:blog, Blog.new(
      :body => "MyText"
    ))
  end

  it "renders new blog form" do
    render

    assert_select "form[action=?][method=?]", blogs_path, "post" do

      assert_select "textarea#blog_body[name=?]", "blog[body]"
    end
  end
end
