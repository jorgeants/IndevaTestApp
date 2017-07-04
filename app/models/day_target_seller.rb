class DayTargetSeller < ApplicationRecord
  belongs_to :day_target
  belongs_to :seller

  monetize :value_cents, with_model_currency: :currency
end
