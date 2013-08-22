class CreateProject < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :resume_id
      t.string :title
      t.string :subtitle
      t.string :link
      t.timestamps
    end

    create_table :properties do |t|
      t.integer :project_id
      t.text :description
      t.timestamps
    end

    add_index :projects, :resume_id
    add_index :properties, :project_id
  end
end
