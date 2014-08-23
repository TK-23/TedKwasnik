class AddJobTable < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :location
      t.date :start_date
      t.date :end_date
      t.string :company_logo
      t.string :title
      t.text :highlights
      t.timestamps
    end
  end
end
