class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :isService, :offeringDescription, :exchangeDescription, :img_url, :value

  belong_to :user
end
