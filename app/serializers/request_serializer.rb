class RequestSerializer < ActiveModel::Serializer
  attributes :id, :status, :message

  belongs_to :provider class_name: "User", foreign_key: :provider_id

  belongs_to :requester class_name: "User", foreign_key: :requester_id
  belongs_to :service
end
