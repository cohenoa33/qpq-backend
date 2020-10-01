class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :isService, :offeringDescription, :exchangeDescription, :img_url, :value, :user_id

  belongs_to :user
  has_many :requesters, through: :request
  has_many :responders, through: :response_service, source: :Request
  has_many :categories, through: :service_categories
end
