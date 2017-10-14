class BatchesController < ApplicationController
  def index
    @batches = Batch.all
  end

  def show
    @batch = Batch.find(params[:id])
    @student = Student.new
  end

  def new
    @batch = Batch.new
  end

  def create
    @batch = Batch.new(batch_params)

     if @batch.save
       redirect_to @batch
     else
       render 'new'
     end
  end



  private

  def batch_params
    params.require(:batch).permit(:name, :startdate, :enddate)
  end
end
