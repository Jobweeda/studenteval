class BatchesController < ApplicationController
  before_action :set_batch, only: [:show, :edit, :update, :destroy]

  def index
   @batches  = Batch.all
   @student  = Student.new
   @batch    = Batch.new
  end

 def show
   @batch      = Batch.find(params[:id])
   @students   = @batch.students
   @student    = Student.new
   @evaluation = Evaluation.create
 end

  def new
    @batch   = Batch.new
  end

  def create
    @batch   = Batch.new(batch_params)

     if @batch.save
       redirect_to @batch
     else
       render 'new'
     end
  end



  private

  def set_batch
    batch = Batch.find(params[:id])
  end

  def batch_params
    params.require(:batch).permit(:name, :startdate, :enddate)
  end
end
