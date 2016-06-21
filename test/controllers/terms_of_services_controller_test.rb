require 'test_helper'

class TermsOfServicesControllerTest < ActionController::TestCase
  setup do
    @terms_of_service = terms_of_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:terms_of_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create terms_of_service" do
    assert_difference('TermsOfService.count') do
      post :create, terms_of_service: { store_name: @terms_of_service.store_name, terms: @terms_of_service.terms }
    end

    assert_redirected_to terms_of_service_path(assigns(:terms_of_service))
  end

  test "should show terms_of_service" do
    get :show, id: @terms_of_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @terms_of_service
    assert_response :success
  end

  test "should update terms_of_service" do
    patch :update, id: @terms_of_service, terms_of_service: { store_name: @terms_of_service.store_name, terms: @terms_of_service.terms }
    assert_redirected_to terms_of_service_path(assigns(:terms_of_service))
  end

  test "should destroy terms_of_service" do
    assert_difference('TermsOfService.count', -1) do
      delete :destroy, id: @terms_of_service
    end

    assert_redirected_to terms_of_services_path
  end
end
