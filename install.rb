require "fileutils"
mkdir_p File.join(RAILS_ROOT, "app", "javascripts")
touch   File.join(RAILS_ROOT, "app", "javascripts", "application.js")
