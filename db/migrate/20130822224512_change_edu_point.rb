class ChangeEduPoint < ActiveRecord::Migration
  def change
    remove_column :edu_points, :point_text
    add_column :edu_points, :description, :text
  end
end
