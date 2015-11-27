require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
	@user = User.new(name: "Example User", email: "user@exsample.com")
  end

	test "should be valid" do

		  @user.name = "  "

 end

	test "name should be present" do
	 @user.name="   "
	 assert_not @user.valid?
 end

end
