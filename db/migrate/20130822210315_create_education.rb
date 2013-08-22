class CreateEducation < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.integer :resume_id
      t.string :institution
      t.string :location
      t.string :time
      t.timestamps
    end

    create_table :edu_points do |t|
      t.integer :education_id
      t.text :point_text
      t.timestamps
    end

    add_index :educations, :resume_id
    add_index :edu_points, :education_id
  end
end
