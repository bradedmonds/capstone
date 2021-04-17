class Api::CitiesController < ApplicationController
  def index
    @cities = City.order(:city)
    render "index.json.jb"
  end
end
