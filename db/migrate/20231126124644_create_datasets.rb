class CreateDatasets < ActiveRecord::Migration[7.0]
  def change
    create_table :datasets do |t|
      t.string :title
      t.text :commentary

      t.timestamps
    end
  end
end
