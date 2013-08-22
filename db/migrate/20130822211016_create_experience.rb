class CreateExperience < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.integer :resume_id
      t.string :title
      t.string :company
      t.string :location
      t.string :time
      t.timestamps
    end

    create_table :exp_points do |t|
      t.integer :experience_id
      t.text :description
      t.timestamps
    end

    add_index :experiences, :resume_id
    add_index :exp_points, :experience_id
  end
end
