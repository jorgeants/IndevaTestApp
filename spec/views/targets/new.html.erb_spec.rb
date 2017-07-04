require 'rails_helper'

RSpec.describe "targets/new", type: :view do
  before(:each) do
    assign(:target, Target.new(
      :name => "MyString",
      :value => ""
    ))
  end

  it "renders new target form" do
    render

    assert_select "form[action=?][method=?]", targets_path, "post" do

      assert_select "input#target_name[name=?]", "target[name]"

      assert_select "input#target_value[name=?]", "target[value]"
    end
  end
end
