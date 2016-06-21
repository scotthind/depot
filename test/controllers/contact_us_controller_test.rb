require 'test_helper'

class ContactUsControllerTest < ActionController::TestCase
  setup do
    @contact_u = contact_us(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_us)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_u" do
    assert_difference('ContactU.count') do
      post :create, contact_u: { city: @contact_u.city, email: @contact_u.email, phone: @contact_u.phone, state: @contact_u.state, store_name: @contact_u.store_name, street: @contact_u.street, zip: @contact_u.zip }
    end

    assert_redirected_to contact_u_path(assigns(:contact_u))
  end

  test "should show contact_u" do
    get :show, id: @contact_u
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_u
    assert_response :success
  end

  test "should update contact_u" do
    patch :update, id: @contact_u, contact_u: { city: @contact_u.city, email: @contact_u.email, phone: @contact_u.phone, state: @contact_u.state, store_name: @contact_u.store_name, street: @contact_u.street, zip: @contact_u.zip }
    assert_redirected_to contact_u_path(assigns(:contact_u))
  end

  test "should destroy contact_u" do
    assert_difference('ContactU.count', -1) do
      delete :destroy, id: @contact_u
    end

    assert_redirected_to contact_us_path
  end
end
