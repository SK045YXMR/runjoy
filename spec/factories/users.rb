FactoryBot.define do
  factory :user do
    nickname              {'test_user'}
    profile               {'test_text'}
    email                 {Faker::Internet.email}
    password              {'test01234'}
    password_confirmation {password}
  end
end