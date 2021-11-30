require 'rails_helper'

RSpec.describe "movements/new", type: :view do
  before(:each) do
    assign(:movement, Movement.new(
      type: "",
      description: "MyString",
      value: "",
      paid: false,
      category: nil,
      user: nil
    ))
  end

  it "renders new movement form" do
    render

    assert_select "form[action=?][method=?]", movements_path, "post" do

      assert_select "input[name=?]", "movement[type]"

      assert_select "input[name=?]", "movement[description]"

      assert_select "input[name=?]", "movement[value]"

      assert_select "input[name=?]", "movement[paid]"

      assert_select "input[name=?]", "movement[category_id]"

      assert_select "input[name=?]", "movement[user_id]"
    end
  end
end
