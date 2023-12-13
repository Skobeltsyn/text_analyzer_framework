class Kase < ApplicationRecord
  belongs_to :dataset
  has_many :conversation_replicas
  has_many :parameter_desired_values, through: :conversation_replicas
  accepts_nested_attributes_for :conversation_replicas, :parameter_desired_values, allow_destroy: true

  def self.ransackable_attributes(auth_object = nil)
    ["commentary", "created_at", "dataset_id", "for_learning", "for_testing", "id", "title", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["conversation_replicas", "dataset", "parameter_desired_values"]
  end

end
