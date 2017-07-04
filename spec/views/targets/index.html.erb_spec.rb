require 'rails_helper'

RSpec.describe "targets/index", type: :view do
  before(:each) do
    assign(:targets, [
      Target.create!(
        :name => "Name",
        :value => ""
      ),
      Target.create!(
        :name => "Name",
        :value => ""
      )
    ])
  end

  it "renders a list of targets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
