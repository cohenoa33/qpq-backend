class User < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  def address
    [street, city, state, zipcode].compact.join(', ')
  end

  has_many :services, dependent: :destroy
  # has_many :requests, through: :services, dependent: :destroy

  validates :email, uniqueness: { case_sensitive: false }, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_secure_password
  # BCrypt:: Password.create('P@ssw0rd')
end
