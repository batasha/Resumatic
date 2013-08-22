  # create_table "educations", :force => true do |t|
  #   t.integer  "resume_id"
  #   t.string   "institution"
  #   t.string   "location"
  #   t.string   "time"
  #   t.datetime "created_at",  :null => false
  #   t.datetime "updated_at",  :null => false
  # end

class Education < ActiveRecord::Base
  attr_accessible :resume_id, :institution, :location, :time

  belongs_to :resume
  has_one :user, through: :resume
  has_many :edu_points
end