class Variable < ApplicationRecord
  has_and_belongs_to_many :sensors
  validates :name, uniqueness: true, presence: true
end
