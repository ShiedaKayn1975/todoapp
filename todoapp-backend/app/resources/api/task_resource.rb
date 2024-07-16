class Api::TaskResource < JSONAPI::Resource
  attributes :title, :sub_title, :priority, :due_date, :created_at, :completed, :updated_at
end