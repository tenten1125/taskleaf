class Task < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }
  belongs_to :user
  scope :recent, -> { order(created_at: :desc) }

  def self.ransackable_attributes(_auth_object = nil)
    %w[name created_at]
  end

  def self.ransackable_associations(_auth_object = nil)
    []
  end
end
