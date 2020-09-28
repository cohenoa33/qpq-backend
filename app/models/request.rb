class Request < ApplicationRecord
  # belongs_to: provider, class_name: 'User', foreign_key: : provider_id
  # belongs_to: requester, class_name: 'User', foreign_key: : requester_id
  belongs_to :requested_service, class_name: 'Service', foreign_key: :requested_service_id
  belongs_to :response_service, class_name: 'Service', foreign_key: :response_service_id

  has_many :users, through: :requested_service
  has_many :users, through: :response_service

  validates :requested_service, uniqueness: { scope: :responses_service }
  # validates :self_cannot_match

  def self_cannot_match
    if self.requested_service_id == self.response_service_id
      errors.add(:requested_service_id, 'You cannot request your own service')
    end
  end
end
