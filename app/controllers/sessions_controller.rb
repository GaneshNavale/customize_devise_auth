class SessionsController < Devise::SessionsController
  respond_to :js

  def create
    self.resource = warden.authenticate(auth_options)
    if resource && resource.active_for_authentication?
      flash.now[:notice] = 'Signed in successfully.'
      sign_in(resource_name, resource)      
    else
      flash.now[:error] = 'Invalid Email or Password'
    end
  end
end