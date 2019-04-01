class Rent < ApplicationRecord
  belongs_to :cassette
  belongs_to :member
end
