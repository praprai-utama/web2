
FactoryGirl.define do
  factory :pattern, :class => Refinery::Patterns::Pattern do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

