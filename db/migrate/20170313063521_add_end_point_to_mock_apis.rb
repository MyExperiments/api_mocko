#
# Migration for adding end_point to mock_apis
#
# @author sufinsha
class AddEndPointToMockApis < ActiveRecord::Migration[5.0]
  def change
    add_column :mock_apis, :end_point, :string
  end
end
