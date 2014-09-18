class AddLocationTable < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.point :geom, :geographic => true, :has_z => true
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :name
      t.string :description
      t.integer :location_type_id
    end
  end
end
