class SchoolsController < ApplicationController
  def index
    @schools = School.all.includes(:departments)
    @schools_with_departments = @schools.map do |school|
    {
      id: school.id,
      name: school.name,
      location: school.location,
      logo: school.logo,
      departments: school.departments.map{|department| {name: department.name}}
    }
    end
    render json: @schools_with_departments
  end

  def create
    @school = School.new(school_params)

    if @school.save
      render json: {message: "School created successfully"}
    else
      render json: {message: @school.error.full_messages}
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
    params.require(:school).permit(:name, :location, :logo)
  end
end
