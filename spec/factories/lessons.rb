FactoryGirl.define do
  factory :lesson do
    title { Faker::Name.title }
    description { Faker::Lorem.paragraph }
    body { Faker::Lorem.paragraph(3) }
    slug { title.parameterize }
  end

end
