class Dataset < ApplicationRecord
  has_many :kases
  accepts_nested_attributes_for :kases, allow_destroy: true

  def self.ransackable_attributes(auth_object = nil)
    ["commentary", "created_at", "id", "title", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["kases"]
  end

end
