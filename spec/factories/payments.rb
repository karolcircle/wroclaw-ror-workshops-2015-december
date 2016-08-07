FactoryGirl.define do
  factory :payment do
    paid { Payment::STATUS.sample }
    date_payment { Faker::Date.between(2.years.ago, 1.year.from_now) }
    student
  end
end
