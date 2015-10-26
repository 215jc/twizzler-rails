require 'test_helper'

class TwizzlesControllerTest < ActionController::TestCase
  setup do
    @twizzle = twizzles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twizzles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twizzle" do
    assert_difference('Twizzle.count') do
      post :create, twizzle: { content: @twizzle.content, user_id: @twizzle.user_id }
    end

    assert_redirected_to twizzle_path(assigns(:twizzle))
  end

  test "should show twizzle" do
    get :show, id: @twizzle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twizzle
    assert_response :success
  end

  test "should update twizzle" do
    patch :update, id: @twizzle, twizzle: { content: @twizzle.content, user_id: @twizzle.user_id }
    assert_redirected_to twizzle_path(assigns(:twizzle))
  end

  test "should destroy twizzle" do
    assert_difference('Twizzle.count', -1) do
      delete :destroy, id: @twizzle
    end

    assert_redirected_to twizzles_path
  end
end
