class Evaluation < ApplicationRecord
  belongs_to :student

  validates :evaluationdate, presence: true, uniqueness: {scope: :student_id}
end
