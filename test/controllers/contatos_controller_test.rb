require 'test_helper'

class ContatosControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact" do
    post :create,
          contact: {:FirstName => 'Test5', :LastName => 'LastName', :Email => 'test5@test5.com.br', :Title => 'Title5', :Phone => '12345544', :AccountId => '001o00000036QViAAM'}

    assert_redirected_to :action => "index"
  end
end
