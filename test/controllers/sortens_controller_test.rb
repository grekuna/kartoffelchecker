require 'test_helper'

class SortensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sorten = sortens(:one)
  end

  test "should get index" do
    get sortens_url
    assert_response :success
  end

  test "should get new" do
    get new_sorten_url
    assert_response :success
  end

  test "should create sorten" do
    assert_difference('Sorten.count') do
      post sortens_url, params: { sorten: { code: @sorten.code, sorte: @sorten.sorte } }
    end

    assert_redirected_to sorten_url(Sorten.last)
  end

  test "should show sorten" do
    get sorten_url(@sorten)
    assert_response :success
  end

  test "should get edit" do
    get edit_sorten_url(@sorten)
    assert_response :success
  end

  test "should update sorten" do
    patch sorten_url(@sorten), params: { sorten: { code: @sorten.code, sorte: @sorten.sorte } }
    assert_redirected_to sorten_url(@sorten)
  end

  test "should destroy sorten" do
    assert_difference('Sorten.count', -1) do
      delete sorten_url(@sorten)
    end

    assert_redirected_to sortens_url
  end
end
