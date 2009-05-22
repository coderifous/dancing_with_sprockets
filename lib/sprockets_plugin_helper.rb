require "fileutils"

module SprocketsPluginHelper
  extend FileUtils::Verbose
  RAILS_ROOT = File.expand_path(File.join(File.dirname(__FILE__), "..", "..", "..", "..")) unless defined?(RAILS_ROOT)

  def self.create_sprockets_directories_and_files
    mkdir_p File.join(RAILS_ROOT, "app", "javascripts")
    touch   File.join(RAILS_ROOT, "app", "javascripts", "application.js")
  end

  def self.add_plugin_routes_to_application_routes
    new_route                 = %Q(  # Route for sprockets controller, added during plugin installation\n  SprocketsPluginHelper.add_routes(map)\n\n)
    route_file_path           = File.join(RAILS_ROOT, "config", "routes.rb")
    original_route_file_lines = File.open(route_file_path).readlines
    routes_file               = File.open(route_file_path, 'w')

    # write each line back, injecting the sprockets route at the top
    original_route_file_lines.each do |line|
      routes_file << line
      if line =~ /ActionController::Routing::Routes\.draw do \|map\|/
        routes_file << new_route
      end
    end

    routes_file.close
    puts "Note: Added sprockets route to top of routes.rb"
  end

  def self.add_routes(map)
    map.connect "/sprockets/:file.js", :controller => "sprockets", :action => "show"
  end

end
