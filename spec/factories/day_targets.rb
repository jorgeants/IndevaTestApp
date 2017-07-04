FactoryGirl.define do
  factory :day_target do
    day "2017-07-04"
	value "500.00"
	association :target, factory: :target
  end

end
