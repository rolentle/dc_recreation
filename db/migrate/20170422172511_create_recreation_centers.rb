class CreateRecreationCenters < ActiveRecord::Migration[5.0]
  def change
    create_table :recreation_centers do |t|
      t.float :x
      t.float :y
      t.integer :objectid
      t.text :name
      t.text :address
      t.text :use_type
      t.integer :ward
      t.text :school_site
      t.text :pool
      t.text :pool_name
      t.text :child_care
      t.text :senior_services
      t.text :web_url
      t.string :phone
      t.string :status
      t.float :xcoord
      t.float :ycoord
      t.integer :addrid
      t.text :fitness_center

      t.timestamps
    end
  end
end
