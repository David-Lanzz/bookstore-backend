class DepartmentsController < ApplicationController

  def index
    @school = School.find(params[:school_id])
    @departments = @school.departments
    render json: @departments
  end

  def create
    @department = Department.new(department_params)
    
    if @department.save
      @firstlevel = Level.create!({number: 100, department_id: @department.id})
      @secondlevel = Level.create!({number: 100, department_id: @department.id})
      @thirdlevel = Level.create!({number: 100, department_id: @department.id})
      @fourthlevel = Level.create!({number: 100, department_id: @department.id})

      @department.levels << @firstlevel
      @department.levels << @secondlevel
      @department.levels << @thirdlevel
      @department.levels << @fourthlevel

      @school = School.find(params[:school_id])
      @school.departments << @department
      render json: {message: "Department created successfully", department: @department}
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
    params.require(:department).permit(:name, :school_id, :logo, :alias)
  end
end
