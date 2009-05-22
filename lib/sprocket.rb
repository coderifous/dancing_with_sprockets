class Sprocket

  def initialize(name)
    @configuration = configuration_from_convention(name)
  end

  def configuration_from_convention(name)
    { :asset_root   => "public",
      :load_path    => %w(app/javascripts),
      :source_files => "app/javascripts/#{name}.js" }
  end

  def source
    secretary.reset! unless source_is_unchanged?
    secretary.concatenation
  end

  protected

  def secretary
    @secretary ||= Sprockets::Secretary.new(configuration.merge(:root => Rails.root))
  end

  def source_is_unchanged?
    previous_source_last_modified, @source_last_modified =
      @source_last_modified, secretary.source_last_modified

    previous_source_last_modified == @source_last_modified
  end

  def configuration
    @configuration || {}
  end

end
