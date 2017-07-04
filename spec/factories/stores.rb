FactoryGirl.define do
  factory :store do
    name "MyString"
	association :user, factory: :user
  end

end
