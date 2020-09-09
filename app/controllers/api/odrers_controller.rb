class OdrersController < ApplicationController
  before_action :set_odrer, only: [:show, :update, :destroy]

  # GET /odrers
  def index
    @odrers = Odrer.all

    render json: @odrers
  end

  # GET /odrers/1
  def show
    render json: @odrer
  end

  # POST /odrers
  def create
    @odrer = Odrer.new(odrer_params)

    if @odrer.save
      render json: @odrer, status: :created, location: @odrer
    else
      render json: @odrer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /odrers/1
  def update
    if @odrer.update(odrer_params)
      render json: @odrer
    else
      render json: @odrer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /odrers/1
  def destroy
    @odrer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_odrer
      @odrer = Odrer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def odrer_params
      params.fetch(:odrer, {})
    end
end
