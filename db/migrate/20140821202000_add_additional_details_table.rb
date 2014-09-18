class AddAdditionalDetailsTable < ActiveRecord::Migration
  def change
    create_table :additional_details do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
