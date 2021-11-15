require 'rails_helper'

RSpec.describe "Users", type: :request do

  def valid_attributes
    return { user: { username: "Leonardo", email: "leofrederiche@gmail.com", password: "123" } }
  end

  def invalid_attributes
    return { user: { username: "Leonardo", password: "123" } }
  end

  describe "GET /new" do
    it 'Render New User' do
      get new_user_path
      expect(response).to render_template("new")
    end    
  end

  describe "POST /create" do
    it 'Old method withoth E-mail' do
      expect{
        post '/users', params: invalid_attributes
      }.not_to change(User, :count)
    end

    it 'New method with E-mail' do
      expect{
        post '/users', params: valid_attributes
      }.to change(User, :count).by(1)
      
    end
  end
end
