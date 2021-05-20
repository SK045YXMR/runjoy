FactoryBot.define do
  factory :run do
    title   {'test_title'}
    content {'test_content'}
    association :user

    after(:build) do |run|
      run.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
