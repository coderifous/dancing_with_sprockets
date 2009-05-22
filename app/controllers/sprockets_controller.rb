class SprocketsController < ActionController::Base
  caches_page :show

  def show
    sprocket = Sprocket.new(params[:file])
    render :text => sprocket.source, :content_type => "text/javascript"
  end
end
