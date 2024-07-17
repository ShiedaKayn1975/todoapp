class Api::TaskResource < JSONAPI::Resource
  attributes :title, :sub_title, :priority, :due_date, :created_at, :completed, :updated_at

  filter :completed, apply: ->(records, value, _options) {
    records.where(completed: value[0] == "false" ? false : true)
  }
end