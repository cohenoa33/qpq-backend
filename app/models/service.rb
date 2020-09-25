class Service < ApplicationRecord
  belong_to :user
  has_many :service_categories
  has_many :categories, through: :services
end
