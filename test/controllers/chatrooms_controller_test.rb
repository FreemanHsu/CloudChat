require 'test_helper'

class ChatroomsControllerTest < ActionController::TestCase
  setup do
    @chatroom = chatrooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chatrooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chatroom" do
    assert_difference('Chatroom.count') do
      post :create, chatroom: { user_id: @chatroom.user_id, key: @chatroom.key, memnum: @chatroom.memnum, popularity: @chatroom.popularity, privacy: @chatroom.privacy, roomcover: @chatroom.roomcover, roomname: @chatroom.roomname, roomno: @chatroom.roomno }
    end

    assert_redirected_to :root
  end

  test "should show chatroom" do
    get :show, id: @chatroom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chatroom
    assert_response :success
  end

  test "should update chatroom" do
    patch :update, id: @chatroom, chatroom: { user_id: @chatroom.user_id, key: @chatroom.key, memnum: @chatroom.memnum, popularity: @chatroom.popularity, privacy: @chatroom.privacy, roomcover: @chatroom.roomcover, roomname: @chatroom.roomname, roomno: @chatroom.roomno }
    assert_redirected_to :root
  end

  test "should destroy chatroom" do
    assert_difference('Chatroom.count', -1) do
      delete :destroy, id: @chatroom
    end

    assert_redirected_to chatrooms_path
  end
end
