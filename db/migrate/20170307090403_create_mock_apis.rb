#
# Migration for creating table mock_apis
#
# @author sufinsha
class CreateMockApis < ActiveRecord::Migration[5.0]
  def change
    create_table :mock_apis do |t|
      t.string :title
      t.text :api_response
      t.string :app
      t.string :api_token, unique: true, index: true
      t.references :user, index: true
      t.timestamps
    end
  end
end
