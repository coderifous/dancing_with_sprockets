module SprocketsHelper
  def sprockets_include_tag(name)
    javascript_include_tag("/sprockets/#{name}")
  end
end
