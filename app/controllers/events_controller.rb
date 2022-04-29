class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @events = Event.all.order(:asc)
  end
  def new
    @event = Event.new
  end
  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event
      flash[:notice] = "Event successfully created"
    else
      render :new
      flash[:alert] = "Some Errors prohibited event from saving"
    end
  end
  def show
    @event = Event.find(params[:id])
  end
  def edit
    @event = Event.find(params[:id])
  end
  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event
      flash[:notice] = "Event successfully updated"
    else
      render :edit
      flash[:alert] = "Failed to update event"
    end
  end
  def destroy
    @event = Event.find(params[:id])
    if @event.delete
      redirect_to events_url
      flash[:alert] = "Event deleted"
    end
  end

  private
  def event_params
    params.require(:event).permit(:name, :date, :pic, :time, :details)
  end
end
