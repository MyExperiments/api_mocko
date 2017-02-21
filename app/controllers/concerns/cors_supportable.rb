#
# CorsSupportable
#
# @author sufinsha
#
module CorsSupportable
  extend ActiveSupport::Concern

  # Enabling cross-browser support for development purpose
  def set_access_control_headers
    return unless Rails.env.development?
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = '*'
    headers['Access-Control-Allow-Credentials'] = 'false'
    headers['Access-Control-Allow-Headers'] = 'Content-Type, Accept'
  end
end