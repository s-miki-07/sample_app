require 'test_helper'

class StaticPagesControllerTest < ActionContorller::TestCase
def setup
 @base_title = "Ruby on Rails Tutorial Sample App"
end

    test "shouled get home" do
     get :home


      assert_response :success 
      assert_select "title", "Home | #{@base_title}"
    end


    test "shouled get help" do
      get :help

      assert_response :success 
      assert_select "title", "Help | #{@base_title}"
    end


    test "shouled get about" do
     get :about

      assert_response :success 
      assert_select "title", "About: | #{@base_title}"
    end
end
