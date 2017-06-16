class Register < ApplicationRecord
  belongs_to :sensor
  belongs_to :variable
end
