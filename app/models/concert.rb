class Concert < ApplicationRecord
  belongs_to :venue
  belongs_to :city
  belongs_to :artist
end
