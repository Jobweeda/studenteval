class Api::StudentsController < ApplicationController
 skip_before_action :verify_authenticity_token
 before_action :set_batch

def create
    student = @batch.students.new(student_params)

    if student.save
      render status: 200, json: {
        message: "Student added",
        batch: @batch,
        student: student
      }.to_json
    else
      render status: 422, json: {
        message: "Adding this student failed",
        errors: student.errors
      }.to_json
    end
end

private

def set_batch
  @batch = Batch.find(params[:batch_id])
end

def student_params
  params.require(:student).permit(:first_name, :last_name, :photo)
end
end
