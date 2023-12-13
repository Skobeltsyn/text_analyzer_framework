class AddConversationReplicaIdToParameterDesiredValues < ActiveRecord::Migration[7.0]
  def change
    add_column :parameter_desired_values, :conversation_replica_id, :integer
  end
end
