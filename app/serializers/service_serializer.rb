class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :isService, :offeringDescription, :exchangeDescription, :img_url, :value
  belongs_to :user
  has_many :requesters, through: :request
  has_many :responders, through: :response_service, source: :Request
end
