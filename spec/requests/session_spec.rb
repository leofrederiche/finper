require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  def valid_attributes
    return { email: "leofrederiche@gmail.com", password: "123" }
  end

  def invalid_attributes
    return { username: "Leonardo Camp", password: "123" }
  end

  describe "GET /new" do
    it "Render New Session" do
      get login_path
      expect(response).to render_template("new")
    end
  end

  describe "POST /create" do
    it "Valid Session" do
      User.create!(valid_attributes)

      post login_path, params: { session: valid_attributes }
          
      expect(assigns(session[:user_id])).not_to be_nil
    end

    it "Invalid Session" do
      post login_path, params: { session: invalid_attributes }
          
      expect(assigns(session)).to be_nil
    end 
  end
end
