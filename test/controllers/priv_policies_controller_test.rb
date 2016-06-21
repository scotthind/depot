require 'test_helper'

class PrivPoliciesControllerTest < ActionController::TestCase
  setup do
    @priv_policy = priv_policies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:priv_policies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create priv_policy" do
    assert_difference('PrivPolicy.count') do
      post :create, priv_policy: { policy: @priv_policy.policy, store_name: @priv_policy.store_name }
    end

    assert_redirected_to priv_policy_path(assigns(:priv_policy))
  end

  test "should show priv_policy" do
    get :show, id: @priv_policy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @priv_policy
    assert_response :success
  end

  test "should update priv_policy" do
    patch :update, id: @priv_policy, priv_policy: { policy: @priv_policy.policy, store_name: @priv_policy.store_name }
    assert_redirected_to priv_policy_path(assigns(:priv_policy))
  end

  test "should destroy priv_policy" do
    assert_difference('PrivPolicy.count', -1) do
      delete :destroy, id: @priv_policy
    end

    assert_redirected_to priv_policies_path
  end
end
