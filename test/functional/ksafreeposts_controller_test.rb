require 'test_helper'

class KsafreepostsControllerTest < ActionController::TestCase
  setup do
    @ksafreepost = ksafreeposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ksafreeposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ksafreepost" do
    assert_difference('Ksafreepost.count') do
      post :create, ksafreepost: { content: @ksafreepost.content, created_at: @ksafreepost.created_at, title: @ksafreepost.title, viewcount: @ksafreepost.viewcount }
    end

    assert_redirected_to ksafreepost_path(assigns(:ksafreepost))
  end

  test "should show ksafreepost" do
    get :show, id: @ksafreepost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ksafreepost
    assert_response :success
  end

  test "should update ksafreepost" do
    put :update, id: @ksafreepost, ksafreepost: { content: @ksafreepost.content, created_at: @ksafreepost.created_at, title: @ksafreepost.title, viewcount: @ksafreepost.viewcount }
    assert_redirected_to ksafreepost_path(assigns(:ksafreepost))
  end

  test "should destroy ksafreepost" do
    assert_difference('Ksafreepost.count', -1) do
      delete :destroy, id: @ksafreepost
    end

    assert_redirected_to ksafreeposts_path
  end
end
