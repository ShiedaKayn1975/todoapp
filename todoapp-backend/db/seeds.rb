# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
INITIAL_TASKS = [
  {
    title: 'Call references',
    sub_title: 'Job ABC123 - UX Designer',
    priority: :high,
    due_date: Time.zone.local(2022, 12, 16, 16, 30)
  },
  {
    title: 'Conduct police check & send emails',
    sub_title: 'Application 12803849 - Calliope Maddison',
    priority: :medium,
    due_date: Time.zone.local(2022, 12, 16, 16, 30)
  },
  {
    title: 'Ask candidates about driver licenses and blue card',
    sub_title: 'Job ABC321 - Aboriginal Family Partnership Worker',
    priority: :low,
    due_date: Time.zone.local(2022, 12, 16, 16, 30)
  }
]

INITIAL_TASKS.each do |task|
  Task.find_or_create_by!(
    title: task[:title],
    sub_title: task[:sub_title],
    priority: task[:priority],
    due_date: task[:due_date]
  )
end