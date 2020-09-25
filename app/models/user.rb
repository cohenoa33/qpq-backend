class User < ApplicationRecord
  has_many :services
  
  # as a requester
  has_many :requester_swipes, class_name: "Request", foreign_key: :provider_id, dependent: :destroy
  has_many :requesters, through: :requester_swipes, source: :requester
  # as a provider
  has_many :provider_swipes, class_name: "Request", foreign_key: :requester_id, dependent: :destroy
  has_many :providers, through: :provider_swipes, source: :provider
  
  has_many :requests
  
  validates :email, uniqueness: true
  validates :name, presence: true
  has_secure_password
  

 
end
