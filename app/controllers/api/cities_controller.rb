class Api::CitiesController < ApplicationController
  def index
    @cities = City.order(:city)
    render "index.json.jb"
  end

  def show
    # @city = City.find_by(city: params[:id].capitalize).concerts
    # render "show.json.jb"
    
    #get all the concerts by venue category - DONE
    #order them by artist score
    #limit to whatever number limit

    venue_ids = []
    venues = City.find_by(city: params[:id].capitalize).venues.where(category: "Large")
    venues.each do |venue|
      venue_ids << venue.id
    end
    
    ordered_concerts = []
    @city = Concert.where(venue_id: [venue_ids])
    # ordered_concerts << concerts[0]
    
    # concerts.each do |concert|
    #   i = 1
    #   if ordered_concerts[i-1].artist.score > concert[i].artist.score 
    #     ordered_concerts << concert
    #   elsif 

    #   end
    # end
    render "show.json.jb"
  end
end
