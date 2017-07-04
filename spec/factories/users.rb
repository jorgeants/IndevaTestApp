FactoryGirl.define do
	factory :user do
		name { Faker::Name.name }
		email { Faker::Internet.safe_email(Faker::Name.first_name) }
		password { Faker::Internet.password }
	end
end
