require 'test_helper'

class WebhookControllerTest < ActionDispatch::IntegrationTest
  test "should get kokodayo" do
    get webhook_kokodayo_url
    assert_response :success
  end

end
