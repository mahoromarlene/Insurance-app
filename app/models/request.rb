class Request < ApplicationRecord
  has_many :users
  belongs_to :insurance_service, optional: true
  belongs_to :company
  mount_uploader :file, FileUploader
end
