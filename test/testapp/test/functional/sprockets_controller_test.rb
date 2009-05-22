require 'test_helper'

class SprocketsControllerTest < ActionController::TestCase
  include SprocketsHelper
  include ActionView::Helpers

   test "can get application.js" do
    get :show, :file => "application"
    assert_response :success
    assert_equal 'text/javascript', @response.content_type
    assert_match /stuff inside amazing.lib.js/, @response.body
    assert_match /your application javascript code/, @response.body
  end

  test "sprockets include tag helper" do
    tag = sprockets_include_tag("application")
    assert_match %r{<script src="/sprockets/application.js" type="text/javascript"></script>}, tag
  end

  test "routing work" do
    assert_routing "/sprockets/application.js", { :controller => "sprockets", :action => "show", :file => "application" }
  end
end
