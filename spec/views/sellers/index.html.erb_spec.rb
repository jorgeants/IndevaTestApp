require 'rails_helper'

RSpec.describe "sellers/index", type: :view do
  before(:each) do
    assign(:sellers, [
      Seller.create!(
        :name => "Name",
        :store => nil
      ),
      Seller.create!(
        :name => "Name",
        :store => nil
      )
    ])
  end

  it "renders a list of sellers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
