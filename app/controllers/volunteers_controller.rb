class VolunteersController < ApplicationController
  before_action :set_volunteer, only: %i[show update destroy]

  # GET /volunteers
  # GET /volunteers.json
  def index
    @volunteers = Volunteer.all
  end

  # GET /volunteers/1
  # GET /volunteers/1.json
  def show; end

  # POST /volunteers
  # POST /volunteers.json
  def create
    @volunteer = Volunteer.new(volunteer_params)

    if @volunteer.save
      render :show, status: :created, location: @volunteer
    else
      render json: @volunteer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /volunteers/1
  # PATCH/PUT /volunteers/1.json
  def update
    if @volunteer.update(volunteer_params)
      render :show, status: :ok, location: @volunteer
    else
      render json: @volunteer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /volunteers/1
  # DELETE /volunteers/1.json
  def destroy
    @volunteer.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_volunteer
    @volunteer = Volunteer.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def volunteer_params
    params.require(:volunteer).permit(:name, :email, :User_id)
  end
end
