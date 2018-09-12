FactoryBot.define do
  factory :task, class: Task do
    title {'Toyota'}
    due {Date.today}
    project
  end
end
