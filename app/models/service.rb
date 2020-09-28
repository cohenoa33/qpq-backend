class Service < ApplicationRecord
  has_many :service_categories dependent: :destroy
  has_many :categories, through: :services 
  belongs_to :user

  # # as a requester
  has_many :service_requesters, class_name: 'Request', foreign_key: :requested_service_id, dependent: :destroy
  has_many :requesters, through: :service_requesters, source: :requested_service

  # # as a provider
  has_many :service_responders, class_name: 'Request', foreign_key: :response_service_id, dependent: :destroy
  has_many :responders, through: :service_responders, source: :response_service
end
