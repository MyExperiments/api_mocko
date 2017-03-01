module Frontend
  #
  # ApiController
  #
  # @author sufinsha
  class ApiController < ActionController::Base
    acts_as_token_authentication_handler_for User
    protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token
    respond_to :json
  end
end
