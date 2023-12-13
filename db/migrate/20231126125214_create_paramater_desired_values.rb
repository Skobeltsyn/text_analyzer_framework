class CreateParamaterDesiredValues < ActiveRecord::Migration[7.0]
  def change
    create_table :paramater_desired_values do |t|
      t.text :value
      t.float :normalized_value
      t.text :commentary
      t.integer :kase_id

      t.timestamps
    end
  end
end
