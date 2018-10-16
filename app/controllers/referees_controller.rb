class RefereesController < ApplicationController
  before_action :set_referee, only: [:show, :update, :destroy]

  # GET /referees
  def index
    @referees = Referee.all

    render json: @referees
  end

  # GET /referees/1
  def show
    render json: @referee
  end

  # POST /referees
  def create
    @referee = Referee.new(referee_params)

    if @referee.save
      render json: @referee, status: :created, location: @referee
    else
      render json: @referee.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /referees/1
  def update
    if @referee.update(referee_params)
      render json: @referee
    else
      render json: @referee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /referees/1
  def destroy
    @referee.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referee
      @referee = Referee.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def referee_params
      params.require(:referee).permit(:first_name, :last_name, :description, :birthday, :country)
    end
end
