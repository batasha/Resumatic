  # create_table "projects", :force => true do |t|
  #   t.integer  "resume_id"
  #   t.string   "title"
  #   t.string   "subtitle"
  #   t.string   "link"
  #   t.datetime "created_at", :null => false
  #   t.datetime "updated_at", :null => false
  # end

class Project < ActiveRecord::Base
  attr_accessible :resume_id, :title, :subtitle, :link, :properties

  belongs_to :resume
  has_one :user, through: :resume
  has_many :properties
end