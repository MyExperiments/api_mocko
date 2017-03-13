module Frontend
  module Api
    #
    # MockApisHelper
    #
    # @author sufinsha
    #
    module MockApisHelper
      # Returns the endpoint to access the url
      def api_url(api)
        return nil if api.end_point.blank?
        "mock_apis/#{api.end_point}?api_token=#{api.api_token}"
      end
    end
  end
end
