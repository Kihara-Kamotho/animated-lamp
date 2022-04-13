class DepartmentsController < ApplicationController
  before_action :set_church
  def index
    @departments = @church.departments
  end
  def new
    @department = @church.departments.build
  end

  def create
    @department = @church.departments.build(department_params)
    if @department.save
      flash[:notice] = "Department created successfully"
      redirect_to @church
    else
      flash[:alert] = "Some Errors prohibited department from saving"
      render :new
    end
  end
  def show
    @department = Department.find(params[:id])
  end
  def edit
    @department = Department.find(params[:id])
  end
  def update
    @department = Department.find(params[:id])
    if @department.update(department_params)
      redirect_to @church
      flash[:notice] = "Department has been updated"
    else
      render :edit
    end
  end
  private
  def set_church
    @church = Church.find(params[:church_id])
  end
  def department_params
    params.require(:department).permit(:name, :motto, :picture)
  end
end
