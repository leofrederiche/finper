require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Crud of User' do
    it 'Creating new User' do
      @user = User.new
      @user.username = 'Leonardo Camp'
      @user.email = 'leofrederiche@gmail.com'
      @user.password = '123'
      @user.save

      expect(User.count).to eq 1
    end
  end
end
