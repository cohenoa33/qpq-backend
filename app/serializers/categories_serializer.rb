class CategoriesSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :service_categories
  has_many :services, through: :service_categories
end
