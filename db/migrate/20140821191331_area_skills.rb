class AreaSkills < ActiveRecord::Migration
  def change
    create_table :area_skills do |t|
      t.integer :expertise_area_id
      t.integer :skill_id
      t.timestamps
    end
  end
end
