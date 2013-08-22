class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password_digest
      t.string :fname
      t.string :lname
      t.string :email
      t.string :session_token
      t.timestamps
    end

    add_index :users, :login
    add_index :users, :session_token
  end
end
