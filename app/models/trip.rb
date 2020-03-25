class Trip < ApplicationRecord
  belongs_to :aeroplane
  has_many :tickets
  has_many :passengers, through: :tickets

  validates :origin, presence: {message:": field must be present"}
  validates :destination, presence: {message:": field must be present"}
end
