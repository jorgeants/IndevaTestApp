require 'rails_helper'

RSpec.describe "sellers/new", type: :view do
  before(:each) do
    assign(:seller, Seller.new(
      :name => "MyString",
      :store => nil
    ))
  end

  it "renders new seller form" do
    render

    assert_select "form[action=?][method=?]", sellers_path, "post" do

      assert_select "input#seller_name[name=?]", "seller[name]"

      assert_select "input#seller_store_id[name=?]", "seller[store_id]"
    end
  end
end
