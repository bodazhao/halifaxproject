class EventsController < ApplicationController
  before_action :logged_in_user,  only: [:new, :edit, :update, :create, :destroy]
  before_action :correct_user,    only: [:edit, :update, :destroy]
  
  def new
    @event = Event.new
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash[:success] = "event created!"
      redirect_to root_url
    else
      @feed_items = []
      render new_event_path
    end
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      flash[:success] = "event updated"
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    @event.destroy
    flash[:success] = "event deleted"
    redirect_to request.referrer || root_url
  end

  private

    def event_params
      params.require(:event).permit(:title, :date_start, :date_end, 
                                    :time_start_hour, :time_start_minute, 
                                    :time_end_hour, :time_end_minute, 
                                    :content, :picture)
    end
    
    def correct_user
      @event = current_user.events.find_by(id: params[:id])
      redirect_to root_url if @event.nil?
    end
    
end
