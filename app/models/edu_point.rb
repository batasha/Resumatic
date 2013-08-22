# create_table "edu_points", :force => true do |t|
#     t.integer  "education_id"
#     t.text     "point_text"
#     t.datetime "created_at",   :null => false
#     t.datetime "updated_at",   :null => false
# end

class EduPoint < ActiveRecord::Base
  attr_accessible :education_id, :point_text

  belongs_to :education
  has_one :resume, through: :education
end
