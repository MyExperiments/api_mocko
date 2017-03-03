module Frontend
  #
  # ApiController
  #
  # @author sufinsha
  class ApiController < ActionController::Base
    layout 'application'
    acts_as_token_authentication_handler_for User

    protect_from_forgery with: :null_session

    skip_before_action :verify_authenticity_token

    before_action :set_success_value

    respond_to :json

    def set_success_value(success = true)
      @success = success
    end
  end
end
