class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def show_validation_errors(resource)
    @resource = resource
    render 'layouts/errors'
  end
end
