module Frontend
  module Api
    #
    # AppsController
    #
    # @author sufinsha
    class AppsController < Frontend::ApiController
      # GET /frontend/api/apps.json
      def index
        render json: {
          success: true,
          apps: current_user.apps
        }
      end

      # POST /frontend/api/apps.json
      def create
        app = current_user.apps.new(permitted_params)
        if app.save
          @succes = true
        else
          @succes = false
          @message = app.errors.full_messages
        end
      end

      private

      def permitted_params
        params.require(:app).permit(:id, :title)
      end
    end
  end
end
