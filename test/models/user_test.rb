require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.create(username: 'John Doe', password: 'password')
  end

  test 'user should be valid' do
    assert @user.valid?
  end

  test 'username should be unique' do
    duplicate_user = @user = User.create(username: 'John Doe', password: 'password')
    assert_not @user.valid?
  end

  test 'username should not be too short' do
    @user.username = 'aa'
    assert_not @user.valid?
  end

  test 'username should not be too long' do
    @user.username = 'a' * 16
    assert_not @user.valid?
  end

    test 'password should not be too short' do
    @user.password = 'aa'
    assert_not @user.valid?
  end

  test 'password should not be too long' do
    @user.password = 'a' * 51
    assert_not @user.valid?
  end

end
