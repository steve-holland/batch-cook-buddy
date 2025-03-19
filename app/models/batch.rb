class Batch < ApplicationRecord
  has_one :meal
  has_many :boxes
end
