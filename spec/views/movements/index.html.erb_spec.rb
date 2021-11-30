require 'rails_helper'

RSpec.describe "movements/index", type: :view do
  before(:each) do
    assign(:movements, [
      Movement.create!(
        type: "Type",
        description: "Description",
        value: "",
        paid: false,
        category: nil,
        user: nil
      ),
      Movement.create!(
        type: "Type",
        description: "Description",
        value: "",
        paid: false,
        category: nil,
        user: nil
      )
    ])
  end

  it "renders a list of movements" do
    render
    assert_select "tr>td", text: "Type".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
