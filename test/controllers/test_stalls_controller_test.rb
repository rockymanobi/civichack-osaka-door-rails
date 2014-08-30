require 'test_helper'

class TestStallsControllerTest < ActionController::TestCase
  setup do
    @test_stall = test_stalls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_stalls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_stall" do
    assert_difference('TestStall.count') do
      post :create, test_stall: { name: @test_stall.name, status: @test_stall.status, uuid: @test_stall.uuid }
    end

    assert_redirected_to test_stall_path(assigns(:test_stall))
  end

  test "should show test_stall" do
    get :show, id: @test_stall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_stall
    assert_response :success
  end

  test "should update test_stall" do
    patch :update, id: @test_stall, test_stall: { name: @test_stall.name, status: @test_stall.status, uuid: @test_stall.uuid }
    assert_redirected_to test_stall_path(assigns(:test_stall))
  end

  test "should destroy test_stall" do
    assert_difference('TestStall.count', -1) do
      delete :destroy, id: @test_stall
    end

    assert_redirected_to test_stalls_path
  end
end
