ActionController::Routing::Routes.draw do |map|
  map.connect "/sprockets/:file.js", :controller => "sprockets", :action => "show"
end
