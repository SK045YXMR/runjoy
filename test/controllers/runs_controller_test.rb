require 'test_helper'

class RunsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get runs_index_url
    assert_response :success
  end

end
