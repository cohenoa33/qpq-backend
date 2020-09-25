class User < ApplicationRecord
  has_many :requests
  has_many :services
  has_many :services, through: :requests

 
end
