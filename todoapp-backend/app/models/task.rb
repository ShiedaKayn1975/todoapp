class Task < ApplicationRecord
  enum priority: %i[low medium high]
end
