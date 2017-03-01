class Company < ApplicationRecord
  belongs_to :user, optional: true
  has_many :insurance_services

  validates :name, presence: true
  validates :description, presence: true
end
