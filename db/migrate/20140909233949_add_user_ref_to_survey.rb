class AddUserRefToSurvey < ActiveRecord::Migration
  def change
    add_reference :surveys, :user, index: true
  end
end
