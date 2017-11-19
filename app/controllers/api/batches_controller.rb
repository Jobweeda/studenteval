class Api::BatchesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    render status: 200, json: {
      batches: Batch.all
    }.to_json
  end

  def show
    batch = Batch.find(params[:id])

    render status: 200, json: {
      batch: batch
    }.to_json
  end

  def create
    batch = Batch.new(batch_params)

    if batch.save
      render status: 201, json: {
        message: "Batch created",
        batch: batch
      }.to_json
    else
      render status: 422, json: {
        errors: batch.errors
      }.to_json
    end
  end

  def destroy
    batch = Batch.find(params[:id])
    batch.destroy

    render status: 200, json: {
      message: "Batch removed",
    }.to_json
  end

  def update
    batch = Batch.find(params[:id])
    if batch.update(batch_params)
      render status: 200, json: {
        message: "Batch changed",
        batch: batch
      }.to_json
    else
      render status: 422, json: {
        errors: batch.errors
      }.to_json
    end
  end

  private
  def batch_params
    params.require(:batch).permit(:name, :startdate, :enddate)
  end
end
