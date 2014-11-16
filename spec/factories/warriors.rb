FactoryGirl.define do
  factory :warrior do
    sequence :name do |n|
     "warrior#{n}"
    end
  end
end
