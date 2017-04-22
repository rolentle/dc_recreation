class ChangeWardidToWardIdOnRecreationCenters < ActiveRecord::Migration[5.0]
  def change
    rename_column :recreation_centers, :ward, :ward_id
  end
end
