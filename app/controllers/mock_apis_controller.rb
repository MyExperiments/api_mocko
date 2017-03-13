#
# MockApisController
#
# @author sufinsha
class MockApisController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  # GET
  def show
    api = MockApi.find_by(api_token: params[:api_token])

    render json: api.api_response
  end
end
