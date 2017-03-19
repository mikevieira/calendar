class Task < ApplicationRecord
  validates :name, presence: true
  validates :datetime, presence: true
end
