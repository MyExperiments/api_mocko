module Frontend
  #
  # ApiController
  #
  # @author sufinsha
  class ApiController < ActionController::Base
    acts_as_token_authentication_handler_for User
    protect_from_forgery with: :null_session
    respond_to :json
  end
end
