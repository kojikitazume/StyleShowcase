require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get gallery" do
    get pages_gallery_url
    assert_response :success
  end

  test "should get reviews" do
    get pages_reviews_url
    assert_response :success
  end

  test "should get services" do
    get pages_services_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end
end
