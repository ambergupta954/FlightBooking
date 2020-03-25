class Passenger < ApplicationRecord
    belongs_to :user
    has_many :tickets
    has_many :trips, through: :tickets

    validates :name, presence: {message:": cannot be empty"}
    validates :age, presence: {message:": cannot be empty"}
    validates :gender, presence: {message:": cannot be empty"}
    validates :email, uniqueness: {message:": Ticket already exists"}
end
