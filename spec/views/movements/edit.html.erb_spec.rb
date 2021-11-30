require 'rails_helper'

RSpec.describe "movements/edit", type: :view do
  before(:each) do
    @movement = assign(:movement, Movement.create!(
      type: "",
      description: "MyString",
      value: "",
      paid: false,
      category: nil,
      user: nil
    ))
  end

  it "renders the edit movement form" do
    render

    assert_select "form[action=?][method=?]", movement_path(@movement), "post" do

      assert_select "input[name=?]", "movement[type]"

      assert_select "input[name=?]", "movement[description]"

      assert_select "input[name=?]", "movement[value]"

      assert_select "input[name=?]", "movement[paid]"

      assert_select "input[name=?]", "movement[category_id]"

      assert_select "input[name=?]", "movement[user_id]"
    end
  end
end
