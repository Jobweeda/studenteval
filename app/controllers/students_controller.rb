class StudentsController < ApplicationController


  def index
   @students = Student.all
 end

 def show
   batch = Batch.find(params[:batch_id])
   @student = batch.students.find(params[:id])
 end

 def new
   batch = Batch.find(params[:batch_id])
   @student = batch.students.build
   @student = Student.new
 end

 def create
   batch = Batch.find(params[:batch_id])

   @student = batch.students.create(student_params)

     if @student.save
        redirect_to @student.batch
     else
       render 'new'
     end
  end
  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :photo, :batch_id)
  end
end
