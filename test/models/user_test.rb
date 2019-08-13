require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup 
    @user = User.new( username: "Example User", 
                      email: "user@example.com",
                      password: "foobar")
  end

  test "should be valid" do 
    assert @user.valid? 
  end

  test "username should be present" do 
    @user.username = "    "
    assert_not @user.valid?
  end

  test "username should be unique" do 
    duplicate_user = @user.dup 
    duplicate_user.username = @user.username.upcase
    @user.save 
    assert_not duplicate_user.valid?
  end

  test "email should be unique" do 
    duplicate_user = @user.dup 
    duplicate_user.email = @user.email.upcase
    @user.save 
    assert_not duplicate_user.valid?
  end

  test "password should be unique" do 
    duplicate_user = @user.dup 
    duplicate_user.password = @user.password.upcase
    @user.save 
    assert_not duplicate_user.valid?
  end

  test "password should have a minimum length" do 
    @user.password = "a" * 5
    assert_not @user.valid?
  end


  # Test associations
  #test "should has_many links" do 
  #  should has_many :links
  #end
end
