#
# App
#
# @author sufinsha
class App < ApplicationRecord
  has_secure_token :app_token
end
