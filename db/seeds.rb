# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "http"

# ------- Seeding the Venues for AL---------#
# request = HTTP.get("https://app.ticketmaster.com/discovery/v2/venues.json?apikey=7elxdku9GGG5k8j0Xm8KWdANDgecHMV0&countryCode=US&stateCode=AL")
# response = request.parse
# response = response["_embedded"]["venues"]
# venues = []
# cities = []

# #--------Seeds Cities---------#
# response.each do |data|
#   venue_name = data["name"]
#   city = data["city"]["name"]
#   state = data["state"]["name"]
#   if cities.include? city
#   else
#     cities << city
#     City.create(
#       city: city,
#       state: state,
#     )
#   end

#   #------Seeds Venues-------#
#   if venues.include? venue_name
#   else
#     venues << venue_name
#     Venue.create(
#         name: venue_name,
#         address: data["address"]["line1"],
#         city_id: City.find_by(city: city).id
#       )
#   end
# end
#   p "you seeded the venues"


  #---------------Seeding the Concerts for AL-----------------#
request = HTTP.get("https://app.ticketmaster.com/discovery/v2/events.json?apikey=7elxdku9GGG5k8j0Xm8KWdANDgecHMV0&locale=*&stateCode=AL&classificationName=music")
response = request.parse
concerts = response["_embedded"]["events"]

concerts.each do |concert|
  venue = concert["_embedded"]["venues"][0]["name"]
  city = concert["_embedded"]["venues"][0]["city"]["name"]
  artist = concert["_embedded"]["attractions"][0]["name"]
  p "artist worked"
  if Artist.find_by(name: artist) 
  elsif
    Artist.create(
      name: artist
    )
  end
  Concert.create(
    city_id: City.find_by(city: city).id,
    venue_id: Venue.find_by(name: venue).id,
    name: concert["name"],
    date: concert["dates"]["start"]["localDate"],
    ticket_link: concert["url"],
    artist_id: Artist.find_by(name: artist).id
  )
end
p "you seeded the AL concerts"