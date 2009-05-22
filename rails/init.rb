config.gem 'sprockets'

require "sprockets"

require "sprocket"
require "sprockets_helper"

config.to_prepare do
  ApplicationController.helper(SprocketsHelper)
end
