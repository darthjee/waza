require 'test_helper'

class TechnicsControllerTest < ActionController::TestCase
  setup do
    @technic = technics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:technics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create technic" do
    assert_difference('Technic.count') do
      post :create, technic: { category_id: @technic.category_id, fase_id: @technic.fase_id, meaning: @technic.meaning }
    end

    assert_redirected_to technic_path(assigns(:technic))
  end

  test "should show technic" do
    get :show, id: @technic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @technic
    assert_response :success
  end

  test "should update technic" do
    patch :update, id: @technic, technic: { category_id: @technic.category_id, fase_id: @technic.fase_id, meaning: @technic.meaning }
    assert_redirected_to technic_path(assigns(:technic))
  end

  test "should destroy technic" do
    assert_difference('Technic.count', -1) do
      delete :destroy, id: @technic
    end

    assert_redirected_to technics_path
  end
end
