class WellcomeController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    render :new
  end
end
