  # create_table "users", :force => true do |t|
  #   t.string   "login"
  #   t.string   "password_digest"
  #   t.string   "fname"
  #   t.string   "lname"
  #   t.string   "email"
  #   t.string   "session_token"
  #   t.datetime "created_at",      :null => false
  #   t.datetime "updated_at",      :null => false
  # end

class User < ActiveRecord::Base
  attr_accessible :login, :password, :password_confirmation, :fname, :lname, :email
  has_secure_password

  has_many :resumes
  has_many :educations, through: :resumes
  has_many :projects, through: :resumes
  has_many :experiences, through: :resumes

  validates :login, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}
  validates :password_confirmation, presence: true
end