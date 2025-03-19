class Box < ApplicationRecord
  has_one :batch
  validates :label, presence: true
end
