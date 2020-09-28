class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :isService, :offeringDescription, :exchangeDescription, :img_url, :value

  belongs_to :user
  belongs_to :request
end
