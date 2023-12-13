class ConversationReplica < ApplicationRecord
  has_many :parameter_desired_values
  belongs_to :kase
  accepts_nested_attributes_for :parameter_desired_values, allow_destroy: true

  def self.ransackable_attributes(auth_object = nil)
    ["content", "created_at", "id", "tag_cloud", "talker_id", "timing_in_seconds", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["parameter_desired_values", "kase"]
  end

end
