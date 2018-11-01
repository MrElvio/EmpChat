require 'test_helper'

class CabinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cabine = cabines(:one)
  end

  test "should get index" do
    get cabines_url, as: :json
    assert_response :success
  end

  test "should create cabine" do
    assert_difference('Cabine.count') do
      post cabines_url, params: { cabine: { cod: @cabine.cod, empresa_id: @cabine.empresa_id } }, as: :json
    end

    assert_response 201
  end

  test "should show cabine" do
    get cabine_url(@cabine), as: :json
    assert_response :success
  end

  test "should update cabine" do
    patch cabine_url(@cabine), params: { cabine: { cod: @cabine.cod, empresa_id: @cabine.empresa_id } }, as: :json
    assert_response 200
  end

  test "should destroy cabine" do
    assert_difference('Cabine.count', -1) do
      delete cabine_url(@cabine), as: :json
    end

    assert_response 204
  end
end
