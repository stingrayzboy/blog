require 'rails_helper'

RSpec.describe "home/index.html.erb", type: :view do
  # before do
  # 	render 'home/index'
  # end
  it "should render a template" do
  	render
  	expect(rendered).to match(/Listing Blogs/)
  end
end
