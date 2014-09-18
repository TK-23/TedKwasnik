class AddSchoolTable < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :location_id
      t.date :start_date
      t.date :end_date
      t.string :date_note
      t.string :degree
      t.string :status
      t.text :additional_info
      t.string :image_path
      t.timestamps
    end
  end
end
