class Service < ApplicationRecord
  belongs_to :user
  has_many :service_categories
  has_many :categories, through: :services
end
