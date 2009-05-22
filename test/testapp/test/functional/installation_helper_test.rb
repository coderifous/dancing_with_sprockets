require 'test_helper'
require 'sprockets_plugin_helper'

class SprocketsControllerTest < ActionController::TestCase

  RoutesFilePath = File.join(Rails.root, "config", "routes.rb")
  RouteRegex = /draw do \|map\|\n.*\n  SprocketsPluginHelper/

  def create_default_routes_file
    content = "ActionController::Routing::Routes.draw do |map|\n  map.connect ':controller/:action/:id'\n  map.connect ':controller/:action/:id.:format'\nend"
    File.open(RoutesFilePath, "w") { |f| f << content }
  end

  def routes_file_contents
    File.open(RoutesFilePath).read
  end

  def assert_no_sprockets_route
    assert routes_file_contents !~ RouteRegex
  end

  def assert_sprockets_route
    assert routes_file_contents =~ RouteRegex
  end

  test "route installation" do
    create_default_routes_file
    assert_no_sprockets_route
    SprocketsPluginHelper.add_plugin_routes_to_application_routes
    assert_sprockets_route
  end
end
