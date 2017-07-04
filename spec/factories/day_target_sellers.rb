FactoryGirl.define do
  factory :day_target_seller do
    value "1000.00"
	association :day_target, factory: :day_target
	association :seller, factory: :seller
  end

end
