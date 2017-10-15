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
    if params[:save_next]
      @student = Student.find(params[:student_id])
      @evaluation = Evaluation.new(evaluation_params)
      @evaluation.student_id = params[:student_id]
      @evaluation.save
      @student_next = Student.where('id > ?', params[:student_id]).first
      redirect_to batch_student_path(@student_next.batch, @student_next.id)
    else
      @evaluation = Evaluation.new
      @student = Student.find(params[:student_id])
      @evaluation = @student.evaluations.create(evaluation_params)
      @evaluation.student_id = @student.id
      if @evaluation.save
        redirect_to @evaluation.student.batch
      else
        redirect_to @evaluation.student.batch
      end
    end
  end

  private

  def evaluation_params
    params.require(:evaluation).permit(:red, :yellow, :green, :evaluationdate, :student_id)
  end
end
