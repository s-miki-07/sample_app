require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    
    a0 = "Home | Ruby on Rails Tutorial Sample App" 
    assert_equal full_title("Home"), a0, "test1"

    a1 = "Help | Ruby on Rails Tutorial Sample App"
    assert_equal full_title("Help"), a1, "test2"
  end

end

