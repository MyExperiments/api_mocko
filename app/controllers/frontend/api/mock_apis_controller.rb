module Frontend
  module Api
    #
    # MockApisController
    #
    # @author sufinsha
    class MockApisController < Frontend::ApiController
      # GET /frontend/api/mock_apis.json
      def index
        @apis = current_user.mock_apis
      end

      # POST /frontend/api/mock_apis.json
      def create
        mock_api = current_user.mock_apis.new(permitted_params)
        unless mock_api.save
          set_success_value(false)
          @message = mock_api.errors.full_messages
        end
      end

      private

      def permitted_params
        params.require(:mock_api).permit(:id, :title, :api_response, :app, :end_point)
      end
    end
  end
end
