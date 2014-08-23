class Skill < ActiveRecord::Base
  has_many :area_skills
  has_many :expertise_areas, through: :area_skills
  has_many :skill_specifics
end
