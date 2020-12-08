require "test_helper"

class QrdataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qrdatum = qrdata(:one)
  end

  test "should get index" do
    get qrdata_url, as: :json
    assert_response :success
  end

  test "should create qrdatum" do
    assert_difference('Qrdatum.count') do
      post qrdata_url, params: { qrdatum: { qrcode: @qrdatum.qrcode, vendor: @qrdatum.vendor } }, as: :json
    end

    assert_response 201
  end

  test "should show qrdatum" do
    get qrdatum_url(@qrdatum), as: :json
    assert_response :success
  end

  test "should update qrdatum" do
    patch qrdatum_url(@qrdatum), params: { qrdatum: { qrcode: @qrdatum.qrcode, vendor: @qrdatum.vendor } }, as: :json
    assert_response 200
  end

  test "should destroy qrdatum" do
    assert_difference('Qrdatum.count', -1) do
      delete qrdatum_url(@qrdatum), as: :json
    end

    assert_response 204
  end
end
