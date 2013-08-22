# create_table "resumes", :force => true do |t|
#     t.integer  "user_id"
#     t.string   "title"
#     t.string   "email"
#     t.string   "link"
#     t.string   "phone"
#     t.string   "headline"
#     t.datetime "created_at", :null => false
#     t.datetime "updated_at", :null => false
# end

class Resume < ActiveRecord::Base
  attr_accessible :user_id, :title, :email, :link, :phone, :headline

  belongs_to :user
  has_many :educations
  has_many :edu_points, through: :educations
  has_many :projects
  has_many :properties, through: :projects
  has_many :experiences
  has_many :exp_points, through: :experiences
end