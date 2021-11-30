require 'rails_helper'

RSpec.describe "movements/show", type: :view do
  before(:each) do
    @movement = assign(:movement, Movement.create!(
      type: "Type",
      description: "Description",
      value: "",
      paid: false,
      category: nil,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
