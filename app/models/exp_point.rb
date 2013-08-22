  # create_table "exp_points", :force => true do |t|
  #   t.integer  "experience_id"
  #   t.text     "description"
  #   t.datetime "created_at",    :null => false
  #   t.datetime "updated_at",    :null => false
  # end

class ExpPoint < ActiveRecord::Base
  attr_accessible :experience_id, :description

  belongs_to :experience
  has_one :resume, through: :experience
end