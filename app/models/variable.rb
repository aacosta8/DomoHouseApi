class Variable < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :registers
  has_many :sensors, through: :registers
end
