require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

 test "shouled get home" do
  get :home
  assert_response :success
  assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
 end


 test "shouled get help" do
  get :home
  assert_response :success
  assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
 end


 test "shouled get about" do
  get :home
  assert_response :success
  assert_select "title", "About | Ruby on Rails Tutorial Sample App"
 end

end

