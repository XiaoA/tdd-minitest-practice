require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase

  test 'should get articles index' do
    get :index
    assert_response :success
  end
end
