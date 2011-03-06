require 'test_helper'

class SitemapControllerTest < ActionController::TestCase
  test "should get idnex" do
    get :idnex
    assert_response :success
  end

end
