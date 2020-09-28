class Request < ApplicationRecord
  belongs_to :provider, class_name: 'User', foreign_key: :provider_id
  belongs_to :requester, class_name: 'User', foreign_key: :requester_id
  belongs_to :service

  validates :provider_id, uniqueness: { scope: :requester_id }
  validate :self_cannot_match

  def self_cannot_match
    errors.add(:provider_id, 'You cannot request your own service') if provider_id == requester_id
  end
end
