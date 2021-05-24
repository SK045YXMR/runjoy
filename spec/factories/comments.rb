FactoryBot.define do
  factory :comment do
    text {'test_text,test_text'}
    association :user
    association :run
  end
end
