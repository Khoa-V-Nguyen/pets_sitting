class Booking < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :animal_name, presence: true
  validates :animal_type, presence: true

  validate :valid_hours_requested

  def valid_hours_requested
    errors.add(:hours_requested, 'must be between 2 and 8') unless hours_requested.between?(2, 8)
  end
end
