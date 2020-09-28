class RequestSerializer < ActiveModel::Serializer
  attributes :id, :status, :message

  belongs_to :provider, foreign_key: :provider_id, class_name: 'User'
  belongs_to :requester, foreign_key: :requester_id, class_name: 'User'
  belongs_to :service
end
 