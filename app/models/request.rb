class Request < ApplicationRecord

  belongs_to :requested_service, class_name: 'Service', foreign_key: :requested_service_id
  belongs_to :response_service, class_name: 'Service', foreign_key: :response_service_id

  has_many :users, through: :requested_service
  has_many :users, through: :response_service

  validates :requested_service, uniqueness: { scope: :response_service }
  # validets that requests with the same service_id as provider and requester can not be made

  validate :self_cannot_match




  def self_cannot_match
    if requested_service_id == response_service_id
      errors.add(:requested_service_id, 'You cannot request your own service')
    end
  end
end

