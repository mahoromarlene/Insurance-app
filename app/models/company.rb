class Company < ApplicationRecord
  belongs_to :user
  has_many :insurance_services
end
