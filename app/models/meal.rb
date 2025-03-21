class Meal < ApplicationRecord
  has_many :batches

  validates :name, presence: true
end
