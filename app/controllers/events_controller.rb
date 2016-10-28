class EventsController < ApplicationController
  before_action :authencate

  def new
    @event = current_user.created_events.build
  end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      redirect_to root_path, notice: 'イベントが作成されました'
    else
      render :new
    end
  end

  def index
    render :new
  end

  private
  def event_params
    params.require(:event).permit(:name, :place, :start_time, :end_time, :content)
  end
end
