require 'test_helper'

class SongbirdsControllerTest < ActionController::TestCase
  setup do
    @songbird = songbirds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:songbirds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create songbird" do
    assert_difference('Songbird.count') do
      post :create, songbird: { song: @songbird.song, title: @songbird.title }
    end

    assert_redirected_to songbird_path(assigns(:songbird))
  end

  test "should show songbird" do
    get :show, id: @songbird
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @songbird
    assert_response :success
  end

  test "should update songbird" do
    put :update, id: @songbird, songbird: { song: @songbird.song, title: @songbird.title }
    assert_redirected_to songbird_path(assigns(:songbird))
  end

  test "should destroy songbird" do
    assert_difference('Songbird.count', -1) do
      delete :destroy, id: @songbird
    end

    assert_redirected_to songbirds_path
  end
end
