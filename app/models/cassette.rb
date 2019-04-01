class Cassette < ApplicationRecord
  has_many :rents
  belongs_to :movie
end
