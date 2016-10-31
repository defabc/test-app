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

  def show
    @event = Event.find(params[:id])
    current_user
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to root_path, notice: 'イベントの更新に成功しました'
    else
      render :edit
    end

  end

  def index
    render :new
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy!
    redirect_to root_path, notice: 'イベントを削除しました'
  end

  private
  def event_params
    params.require(:event).permit(:name, :place, :start_time, :end_time, :content)
  end
end
