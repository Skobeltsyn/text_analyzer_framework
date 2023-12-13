class AddParameterNameToParamaterDesiredValues < ActiveRecord::Migration[7.0]
  def change
    add_column :parameter_desired_values, :parameter_name, :string
  end
end
