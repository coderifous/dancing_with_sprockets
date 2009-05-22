$: << File.join(File.dirname(__FILE__), 'lib')
require 'sprockets_plugin_helper'

SprocketsPluginHelper.create_sprockets_directories_and_files
SprocketsPluginHelper.add_plugin_routes_to_application_routes
