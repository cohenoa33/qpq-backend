class ServiceCategoriesSerializer < ActiveModel::Serializer
  attributes :id, :category_id, :service_id

  belongs_to :category
  belongs_to :service
end
