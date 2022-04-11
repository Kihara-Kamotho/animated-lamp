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
  end
  private
  def church_params
    params.require(:church).permit(:name, :address, :vision, :email)
  end
end
