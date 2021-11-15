require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  def valid_attributes
    return { session: { email: "leofrederiche@gmail.com", password: "123" } }
  end

  def invalid_attributes
    return { session: { username: "Leonardo Camp", password: "123" } }
  end

  describe "GET /new" do
    it "Render New Session" do
      get login_path
      expect(response).to render_template("new")
    end
  end

  describe "POST /create" do
    it "Create Session" do
      post login_path, params: valid_attributes
          
      expect(session[:current_id]) != nil
    end

    it "Invalid Session" do
      post login_path, params: invalid_attributes
          
      expect(session[:current_id]) == nil
    end 
  end
end
