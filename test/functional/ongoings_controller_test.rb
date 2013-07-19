require 'test_helper'

class OngoingsControllerTest < ActionController::TestCase
  setup do
    @ongoing = ongoings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ongoings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ongoing" do
    assert_difference('Ongoing.count') do
      post :create, ongoing: { game_id: @ongoing.game_id, udid: @ongoing.udid }
    end

    assert_redirected_to ongoing_path(assigns(:ongoing))
  end

  test "should show ongoing" do
    get :show, id: @ongoing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ongoing
    assert_response :success
  end

  test "should update ongoing" do
    put :update, id: @ongoing, ongoing: { game_id: @ongoing.game_id, udid: @ongoing.udid }
    assert_redirected_to ongoing_path(assigns(:ongoing))
  end

  test "should destroy ongoing" do
    assert_difference('Ongoing.count', -1) do
      delete :destroy, id: @ongoing
    end

    assert_redirected_to ongoings_path
  end
end
