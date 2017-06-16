class Sensor < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :registers
  has_many :variables, through: :registers
end
