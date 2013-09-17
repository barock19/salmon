require 'test_helper'

class PublicPhotosControllerTest < ActionController::TestCase
  setup do
    @public_photo = public_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:public_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create public_photo" do
    assert_difference('PublicPhoto.count') do
      post :create, public_photo: { caption: @public_photo.caption, image: @public_photo.image }
    end

    assert_redirected_to public_photo_path(assigns(:public_photo))
  end

  test "should show public_photo" do
    get :show, id: @public_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @public_photo
    assert_response :success
  end

  test "should update public_photo" do
    patch :update, id: @public_photo, public_photo: { caption: @public_photo.caption, image: @public_photo.image }
    assert_redirected_to public_photo_path(assigns(:public_photo))
  end

  test "should destroy public_photo" do
    assert_difference('PublicPhoto.count', -1) do
      delete :destroy, id: @public_photo
    end

    assert_redirected_to public_photos_path
  end
end
