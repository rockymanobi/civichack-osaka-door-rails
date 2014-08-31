require 'test_helper'

class TestLogsControllerTest < ActionController::TestCase
  setup do
    @test_log = test_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_log" do
    assert_difference('TestLog.count') do
      post :create, test_log: { status: @test_log.status, test_stall_id: @test_log.test_stall_id }
    end

    assert_redirected_to test_log_path(assigns(:test_log))
  end

  test "should show test_log" do
    get :show, id: @test_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_log
    assert_response :success
  end

  test "should update test_log" do
    patch :update, id: @test_log, test_log: { status: @test_log.status, test_stall_id: @test_log.test_stall_id }
    assert_redirected_to test_log_path(assigns(:test_log))
  end

  test "should destroy test_log" do
    assert_difference('TestLog.count', -1) do
      delete :destroy, id: @test_log
    end

    assert_redirected_to test_logs_path
  end
end
