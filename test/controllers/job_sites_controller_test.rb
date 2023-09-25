require "test_helper"

class JobSitesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get job_sites_index_url
    assert_response :success
  end
end
