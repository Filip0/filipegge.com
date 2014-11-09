require 'rails_helper'

RSpec.describe "blogs/index", :type => :view do
  before(:each) do
    assign(:blogs, [
      Blog.create!(
        :body => "MyText"
      ),
      Blog.create!(
        :body => "MyText"
      )
    ])
  end

  it "renders a list of blogs" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
