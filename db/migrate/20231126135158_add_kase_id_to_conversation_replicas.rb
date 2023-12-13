class AddKaseIdToConversationReplicas < ActiveRecord::Migration[7.0]
  def change
    add_column :conversation_replicas, :kase_id, :integer
  end
end
