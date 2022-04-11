class ChurchesController < ApplicationController
  def index
    @churches = Church.all
  end
  def new
    @church = Church.new
  end
  def create
    @church = Church.new(church_params)
    if @church.save
      redirect_to @church
      flash[:notice] = "Church created successfully"
    else
      render :new
      flash[:alert] = "Some error prohibited church from saving"
    end
  end
  def show
    @church = Church.find(params[:id])
  end
  def edit
    @church = Church.find(params[:id])
  end
  def update
    @church = Church.find(params[:id])
    if @church.update(church_params)
      redirect_to @church
      flash[:notice] = "Church updated successfully"
    else
      render :edit
      flash[:alert] = "Some error prohibited church from updating"
    end
  end
  def destroy
    @church = Church.find(params[:id])
    if @church.destroy
      flash[:notice] = "Church deleted"
      redirect_to churches_path
    end
  end

  private
  def church_params
    params.require(:church).permit(:name, :address, :vision, :email)
  end
end
