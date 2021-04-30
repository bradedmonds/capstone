class Api::VenuesController < ApplicationController
  def show
    @venue = Venue.find_by(id: params[:id])
    render "show.json.jb"
  end
end
