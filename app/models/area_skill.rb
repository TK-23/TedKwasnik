class AreaSkill < ActiveRecord::Base
  belongs_to :skill
  belongs_to :expertise_area
end
