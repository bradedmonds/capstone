class Api::ConcertsController < ApplicationController
  def index
    concerts = City.find_by(city: params[:id].capitalize).concerts
    @concerts = concerts.order(:date)
    
    render "index.json.jb"
  end

  def show

  end
end
