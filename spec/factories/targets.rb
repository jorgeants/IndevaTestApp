FactoryGirl.define do
  factory :target do
    name "MyString"
	start_date "2017-07-03"
	end_date "2017-07-03"
	value "100.00"
	association :store, factory: :store
  end

end
