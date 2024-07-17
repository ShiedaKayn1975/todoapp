FactoryBot.define do
  factory :task do
    title { FFaker::Job.title }
    sub_title { FFaker::Job.title }
    due_date { FFaker::Time.datetime }
    priority { 0 }
    completed { FFaker::Boolean.random }
  end
end
