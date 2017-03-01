#
# Migration for creating apps table
#
# @author sufinsha
class CreateApps < ActiveRecord::Migration[5.0]
  def change
    create_table :apps do |t|
      t.string :title
      t.string :app_token
      t.string :user_id
      t.timestamps
    end
    add_index :apps, :app_token, unique: true
  end
end
