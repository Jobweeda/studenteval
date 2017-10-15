class Batch < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :startdate, presence: true
  validates :enddate, presence: true

  has_many :students



    def evaluation_colors
      @green_evaluation = []
      @yellow_evaluation = []
      @red_evaluation = []
    end


    def student_evaluations
      @batch = Batch.find(params[:id])
        @batch.student.each do |student|
          student.evaluations.last(1).each do |evaluation|
          if evaluation.green == true
            @green_evaluation.push(student.id)
          elsif evaluation.yellow == true
            @yellow_evaluation.push(student.id)
          else
            @red_evaluation.push(student.id)
          end
        end
      end
    end

    def algorithm
      algorithm = rand()

      if algorithm <= 0.17
        @green_evaluation.sample
      elsif algorithm <= 0.50
        @yellow_evaluation.sample
      else
        @red_evaluation.sample
      end
    end
end
