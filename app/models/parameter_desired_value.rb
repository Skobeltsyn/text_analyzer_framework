class ParameterDesiredValue < ApplicationRecord
  belongs_to :conversation_replica

  def self.ransackable_attributes(auth_object = nil)
    ["commentary", "conversation_replica_id", "created_at", "id", "kase_id", "normalized_value", "parameter_name", "updated_at", "value"]
  end

end
