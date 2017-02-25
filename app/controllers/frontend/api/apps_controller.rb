module Frontend
  module Api
    #
    # AppsController
    #
    # @author sufinsha
    class AppsController < Frontend::ApiController
      # GET /frontend/api/apps.json
      def index
        p request.headers['X-User-Token']
        render json: { success: true }
      end
    end
  end
end
