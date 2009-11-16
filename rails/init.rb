gem 'sprockets'

require "sprocket"
require "sprockets_helper"

init_block = lambda { ApplicationController.helper(SprocketsHelper) }

if defined? ActionDispatch::Callbacks
    ActionDispatch::Callbacks.before_dispatch(&init_block)
else
    config.to_prepare(&init_block)
end
