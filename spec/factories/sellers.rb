FactoryGirl.define do
  factory :seller do
    name "MyString"
	association :store, factory: :store
  end

end
