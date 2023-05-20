module PricingEngine
  BASE_CHARGE = 20
  PRICING = {
    'Dog' => 10,
    'Cat' => 5
  }.freeze

  def subtotal
    additional_charge = (hours_requested - 1) * PRICING[animal_type]
    BASE_CHARGE + additional_charge
  end
end
