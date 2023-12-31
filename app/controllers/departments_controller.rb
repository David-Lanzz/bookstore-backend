class DepartmentsController < ApplicationController

  def create
    @department = Department.new(department_params)

    if @department.save
      @school = School.find(params[:school_id])
      @school.departments << @department
      render json: {message: "Department created successfully"}
    else
      render json: {error: @department.errors.full_messages}
    end
  end

  def show
    @department = Department.find(params[:id])
    @levels = @department.levels
    render json: @levels
  end

  private

  def department_params
    params.require(:department).permit(:name, :school_id)
  end
end
