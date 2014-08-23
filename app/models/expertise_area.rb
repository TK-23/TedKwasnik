class ExpertiseArea < ActiveRecord::Base
  has_many :area_skills
  has_many :skills, through: :area_skills
end
