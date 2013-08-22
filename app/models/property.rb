  # create_table "properties", :force => true do |t|
  #   t.integer  "project_id"
  #   t.text     "description"
  #   t.datetime "created_at",  :null => false
  #   t.datetime "updated_at",  :null => false
  # end

class Property < ActiveRecord::Base
  attr_accessible :project_id, :description

  belongs_to :project
  has_one :resume, through: :project
end