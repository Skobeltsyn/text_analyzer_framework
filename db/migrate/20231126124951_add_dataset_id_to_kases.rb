class AddDatasetIdToKases < ActiveRecord::Migration[7.0]
  def change
    add_column :kases, :dataset_id, :integer
  end
end
