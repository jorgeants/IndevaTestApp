class DayTarget < ApplicationRecord
  belongs_to :target
  has_many :day_target_sellers, inverse_of: :day_target
  accepts_nested_attributes_for :day_target_sellers, reject_if: :all_blank, allow_destroy: true

  monetize :value_cents, with_model_currency: :currency
end
