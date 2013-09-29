require 'test_helper'

class TopicsControllerTest < ActionController::TestCase
   def test_new
    get :new
    assert_response :success
    assert_select "form"
  end

  def test_create
    assert_difference "Tea.count" do
    post :create, tea: {kind: "Chai"}
  end
    assert_redirected_to teas_url
    assert_equal "Tea created!", flash[:notice]
  end

  def test_create_fail
    assert_no_difference "Tea.count" do
      post :create, tea: {kind: ""}
    end
    assert_template "new"
  end

  def test_index
    get :index
    assert_response :success
  end
end

