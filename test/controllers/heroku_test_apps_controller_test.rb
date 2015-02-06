require 'test_helper'

class HerokuTestAppsControllerTest < ActionController::TestCase
  setup do
    @heroku_test_app = heroku_test_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:heroku_test_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create heroku_test_app" do
    assert_difference('HerokuTestApp.count') do
      post :create, heroku_test_app: { name: @heroku_test_app.name }
    end

    assert_redirected_to heroku_test_app_path(assigns(:heroku_test_app))
  end

  test "should show heroku_test_app" do
    get :show, id: @heroku_test_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @heroku_test_app
    assert_response :success
  end

  test "should update heroku_test_app" do
    patch :update, id: @heroku_test_app, heroku_test_app: { name: @heroku_test_app.name }
    assert_redirected_to heroku_test_app_path(assigns(:heroku_test_app))
  end

  test "should destroy heroku_test_app" do
    assert_difference('HerokuTestApp.count', -1) do
      delete :destroy, id: @heroku_test_app
    end

    assert_redirected_to heroku_test_apps_path
  end
end
