class LevelsController < ApplicationController

  def index 
    @department = Department.find(params[:department_id])
    @levels = @department.levels
    render json: @levels
  end

  def create
    @level = Level.new(level_params)

    if @level.save
      @department = Department.find(params[:department_id])
      @department.levels << @level
      render json: {message: "Level created successfully"}
    else
      render json: {error: @level.errors.full_messages}
    end
  end

  def show
    @level = Level.find(params[:id])
    render json: {level_number: @level.number,books: @level.books}
  end

  private

  def level_params
    params.require(:level).permit(:department_id,:number)
  end
end
