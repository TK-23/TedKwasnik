class SkillSpecifics < ActiveRecord::Migration
  def change
    create_table :skill_specifics do |t|
      t.integer :skill_id
      t.text :description
      t.timestamps
    end
  end
end
