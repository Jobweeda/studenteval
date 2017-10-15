class Batch < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :startdate, presence: true
  validates :enddate, presence: true

  has_many :students

def student_evaluations
    @batch = Batch.find(params[:id])
    @student = batch.students.find(params[:id])
    evaluations = Evaluation.find(params[:red, :yellow, :green])

      @batch.students.each do |student|
        student.evaluations.last(1).each do |evaluation|
        if evaluation.green == true
          @green_evaluation << student.id
        elsif evaluation.yellow == true
          @yellow_evaluation << student.id
        else
          @red_evaluation << student.id
        end
      end
    end
  end

  def random_pick
    @green_evaluation  = []
    @yellow_evaluation = []
    @red_evaluation    = []

    random_pick = rand()

    if random_pick <= 0.17
      @green_evaluation.shuffle.first
    elsif random_pick <= 0.5
      @yellow_evaluation.shuffle.first
    else random_pick <= 1
      @red_evaluation.shuffle.first
    end
  end

end

# var startRed = ['Henkrood', 'Joeyrood', 'fritsrood', 'Jobrood']
# var startYellow = ['Henkgeel', 'Joeygeel', 'fritsgeel', 'Jobgeel']
# var startGreen = ['Henkgroen', 'Joeygroen', 'fritsgroen', 'Jobgroen']
#
# var red = startRed[[Math.floor(Math.random()*startRed.length)]]
# var yellow = startYellow[[Math.floor(Math.random()*startYellow.length)]]
# var green = startGreen[[Math.floor(Math.random()*startGreen.length)]]
#
# var getRandom =(Math.random())
#
#
# if (getRandom <= 0.17){
#   console.log(green, getRandom)
# } else if (getRandom <= 0.50) {
#   console.log(yellow, getRandom)
# } else {
#   console.log(red, getRandom)
# }
