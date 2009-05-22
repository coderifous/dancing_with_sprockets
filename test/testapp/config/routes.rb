ActionController::Routing::Routes.draw do |map|
  # Route for sprockets controller, added during plugin installation
  SprocketsPluginHelper.add_routes(map)

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end