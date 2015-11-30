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

	test "name shoul not be too long" do
	@user.name ="a" * 51
	assert_not @user.valid?
	end

	test "name shoul not be too long" do
	@user.name ="a" * 244 + "@example.com"
	assert_not @user.valid?
	end
	
	test "email validation should accept valid addresses" do
	 valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org firast.last@foo.jp alice+bob@baz.cn]
	 valid_addresses.each do |valid_address|
	  @user.email = valid_address
	  assert @user.valid?, "#{valid_address.inspet} shoule be valid"
	end
     end	
end
