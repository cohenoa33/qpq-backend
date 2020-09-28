class User < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  def address
    [street, city, state, zipcode].compact.join(', ')
  end

  has_many :services
  has_many :requests, through: :services

  validates :email, uniqueness: true, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_secure_password
  # BCrypt:: Password.create('P@ssw0rd')
end
