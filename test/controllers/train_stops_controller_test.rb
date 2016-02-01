require 'test_helper'

class TrainStopsControllerTest < ActionController::TestCase
  setup do
    @train_stop = train_stops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:train_stops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create train_stop" do
    assert_difference('TrainStop.count') do
      post :create, train_stop: { arrive_time: @train_stop.arrive_time, depart_time: @train_stop.depart_time, line_id: @train_stop.line_id, name: @train_stop.name }
    end

    assert_redirected_to train_stop_path(assigns(:train_stop))
  end

  test "should show train_stop" do
    get :show, id: @train_stop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @train_stop
    assert_response :success
  end

  test "should update train_stop" do
    patch :update, id: @train_stop, train_stop: { arrive_time: @train_stop.arrive_time, depart_time: @train_stop.depart_time, line_id: @train_stop.line_id, name: @train_stop.name }
    assert_redirected_to train_stop_path(assigns(:train_stop))
  end

  test "should destroy train_stop" do
    assert_difference('TrainStop.count', -1) do
      delete :destroy, id: @train_stop
    end

    assert_redirected_to train_stops_path
  end
end
