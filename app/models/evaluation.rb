class Evaluation < ApplicationRecord
  belongs_to :student

  validates :evaluationdate, presence: true, uniqueness:true
end
