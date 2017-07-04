require 'rails_helper'

RSpec.describe "targets/edit", type: :view do
  before(:each) do
    @target = assign(:target, Target.create!(
      :name => "MyString",
      :value => ""
    ))
  end

  it "renders the edit target form" do
    render

    assert_select "form[action=?][method=?]", target_path(@target), "post" do

      assert_select "input#target_name[name=?]", "target[name]"

      assert_select "input#target_value[name=?]", "target[value]"
    end
  end
end
