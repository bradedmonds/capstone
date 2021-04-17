class Api::CitiesController < ApplicationController
  def index
    @cities = City.order(:city)
    render "index.json.jb"
  end

  def show
    @city = City.find_by(city: params[:id].capitalize)
    render "show.json.jb"
  end
end
