class Batch < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :startdate, presence: true
  validates :enddate, presence: true

  has_many :students, dependent: :destroy

  def student_evaluations
    @green_evaluation = []
    @yellow_evaluation = []
    @red_evaluation = []

    students.each do |student|
      student.evaluations.last(1).each do |evaluation|
        if evaluation.green == true
          @green_evaluation.push(student.first_name)
        elsif evaluation.yellow == true
          @yellow_evaluation.push(student.first_name)
        elsif
          @red_evaluation.push(student.first_name)
        end
      end
    end
  end


  def random_pick
    student_evaluations
    random_number = rand()


    if random_number <= 0.17
        @green_evaluation.sample
    elsif random_number <= 0.50
        @yellow_evaluation.sample
    else
        @red_evaluation.sample
  end
end

end
