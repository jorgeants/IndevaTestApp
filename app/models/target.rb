class Target < ApplicationRecord
	belongs_to :store
	has_many :day_targets, inverse_of: :target
	accepts_nested_attributes_for :day_targets, reject_if: :all_blank, allow_destroy: true

	monetize :value_cents, with_model_currency: :currency
end
