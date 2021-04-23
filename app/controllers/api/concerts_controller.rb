class Api::ConcertsController < ApplicationController
  def index
    city = City.find_by(city: params[:id].capitalize)
    
    # @concerts = city.concerts
    
    #get all the concerts by venue category - DONE
    #order them by artist score
    #limit to whatever number limit

    venue_ids = []
    venues = city.venues.where(category: "Large")
    venues.each do |venue|
      venue_ids << venue.id
    end
    
    # ordered_concerts = []
    @concerts = Concert.where(venue_id: [venue_ids])
    # ordered_concerts << concerts[0]
    # concerts = ordered_concerts
    
    render "index.json.jb"
  end

  def show

  end
end
