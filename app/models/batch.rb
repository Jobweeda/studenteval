class Batch < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :startdate, presence: true
  validates :enddate, presence: true
end
