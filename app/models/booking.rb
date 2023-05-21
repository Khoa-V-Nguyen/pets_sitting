class Booking < ApplicationRecord
  include PricingEngine

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :animal_name, presence: true
  validates :animal_type, presence: true

  validate :valid_hours_requested
  validate :date_of_service_check

  private

  def valid_hours_requested
    errors.add(:hours_requested, 'must be between 2 and 8') unless hours_requested&.between?(2, 8)
  end

  def date_of_service_check
    return unless (date_of_service || Date.today) <= Date.today

    errors.add(:date_of_service, "must be greater than #{Date.today}")
  end
end
