class SchoolsController < ApplicationController
  # before_action :authenticate_user!
  def index
    @schools = School.all
    render json: @schools
  end

  def create
    @school = School.new(school_params)

    if @school.save
      render json: {message: "School created successfully"}
    else
      render json: {message: @school.errors.full_messages}
    end
  end

  def show
    @school = School.find(params[:id])
    @departments = @school.departments
    @authors = @school.authors
    render json: {departments: @departments, authors: @authors}
  end

  private

  def school_params
    params.require(:school).permit(:name, :location, :logo, :alias)
  end
end
