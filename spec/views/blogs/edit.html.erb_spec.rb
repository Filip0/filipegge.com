require 'rails_helper'

RSpec.describe "blogs/edit", :type => :view do
  before(:each) do
    @blog = assign(:blog, Blog.create!(
      :body => "MyText"
    ))
  end

  it "renders the edit blog form" do
    render

    assert_select "form[action=?][method=?]", blog_path(@blog), "post" do

      assert_select "textarea#blog_body[name=?]", "blog[body]"
    end
  end
end
