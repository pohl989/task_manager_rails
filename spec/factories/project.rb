FactoryBot.define do
  factory :project, class: Project do
    title {'Best Project Ever'}
    due do
      Date.today
    end
  end
end
