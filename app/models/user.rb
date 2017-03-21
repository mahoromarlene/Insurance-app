class User < ApplicationRecord
  has_secure_password

  has_one :company
  has_many :requests
  has_many :insurance_services, through: :requests

  validates :first_name, presence: {message: "First_name is required"}
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, length: { in: 6..20, message: "It is too short"}

end
