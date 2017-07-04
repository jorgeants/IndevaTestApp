require 'rails_helper'

RSpec.describe "targets/show", type: :view do
  before(:each) do
    @target = assign(:target, Target.create!(
      :name => "Name",
      :value => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
