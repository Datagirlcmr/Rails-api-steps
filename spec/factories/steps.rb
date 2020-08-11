FactoryBot.define do
    factory :step do
      date { Faker::Date.date }
      steps { Faker::Number.number(10) }
    end
  end