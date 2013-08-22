  # create_table "experiences", :force => true do |t|
  #   t.integer  "resume_id"
  #   t.string   "title"
  #   t.string   "company"
  #   t.string   "location"
  #   t.string   "time"
  #   t.datetime "created_at", :null => false
  #   t.datetime "updated_at", :null => false
  # end

class Experience < ActiveRecord::Base
  attr_accessible :resume_id, :title, :company, :location, :time

  belongs_to :resume
  has_one :user, through: :resume
  has_many :exp_points
end