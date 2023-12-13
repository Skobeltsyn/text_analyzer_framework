class CreateKases < ActiveRecord::Migration[7.0]
  def change
    create_table :kases do |t|
      t.text :title
      t.text :commentary
      t.boolean :for_learning
      t.boolean :for_testing

      t.timestamps
    end
  end
end
