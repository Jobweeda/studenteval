class EvaluationsController < ApplicationController

  def index
    @evaluations = Evaluation.all
  end

  def show
    student     = Student.find(params[:student_id])
    @evaluation = batch.evaluations.find(params[:id])
  end

  def new
    student     = Student.find(params[:student_id])
    @evaluation = batch.student.evaluations.build
  end

  def create
    student     = Student.find(params[:student_id])
    @evaluation = Evaluation.new(evaluation_params)
    @evaluation.student_id = params[:student_id]

    if @evaluation.save
      redirect_to @evaluation.student.batch
    else
      redirect_to @evaluation.student.batch
    end
  end

  private

  def evaluation_params
    params.require(:evaluation).permit(:red, :yellow, :green, :evaluationdate, :student_id)
  end
end
