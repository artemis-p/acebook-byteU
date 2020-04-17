require 'rails_helper'

RSpec.describe User, type: :model do

  before do
    @user = User.new(email: 'example@example.com',
            password: 'password', password_confirmation: 'password')
  end
  it 'should work with factory bot' do
    user1 = create(:user)
    expect(user1.valid?).to eq(true)
  end
  it 'email should be present' do
   @user.email = ''
   expect(@user.valid?).to eq(false)
 end
end
