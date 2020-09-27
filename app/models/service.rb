class Service < ApplicationRecord
  has_many :service_categories
  has_many :categories, through: :services
  belongs_to :user
end
