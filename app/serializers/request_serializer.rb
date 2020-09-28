class RequestSerializer < ActiveModel::Serializer
  attributes :id, :status, :message

  belongs_to :requested_service, class_name: 'Service', foreign_key: :requested_service_id
  belongs_to :response_service, class_name: 'Service', foreign_key: :response_service_id
end
