require 'test_helper'

class TemasControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get temas_top_url
    assert_response :success
  end

end
