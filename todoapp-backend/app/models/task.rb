class Task < ApplicationRecord
  enum priority: %i[low medium high]

  validates :priority, presence: true
end
