class User < ApplicationRecord
  has_secure_password
  # attr_accessor :password, :password_confirmation

  has_one :company
  has_many :insurance_services, through: :request
end
