
FactoryGirl.define do

  factory :message do

    user_name { Faker::Name.name }
    text { Faker::Lorem.sentence }
  
  end

end
