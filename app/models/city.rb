class City < ApplicationRecord
  has_many :venues
  has_many :concerts
end
