require 'test_helper'

class ImportantEventsControllerTest < ActionController::TestCase
  setup do
    @important_event = important_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:important_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create important_event" do
    assert_difference('ImportantEvent.count') do
      post :create, important_event: { date: @important_event.date, details: @important_event.details, event: @important_event.event }
    end

    assert_redirected_to important_event_path(assigns(:important_event))
  end

  test "should show important_event" do
    get :show, id: @important_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @important_event
    assert_response :success
  end

  test "should update important_event" do
    put :update, id: @important_event, important_event: { date: @important_event.date, details: @important_event.details, event: @important_event.event }
    assert_redirected_to important_event_path(assigns(:important_event))
  end

  test "should destroy important_event" do
    assert_difference('ImportantEvent.count', -1) do
      delete :destroy, id: @important_event
    end

    assert_redirected_to important_events_path
  end
end
