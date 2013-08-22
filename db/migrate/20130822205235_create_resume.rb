class CreateResume < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.integer :user_id
      t.string :title
      t.string :email
      t.string :link
      t.string :phone
      t.string :headline
      t.timestamps
    end

    add_index :resumes, :user_id
  end
end
