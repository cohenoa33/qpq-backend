class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable,
          :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

    geocoded_by :address
    after_validation :geocode
    def address
      [street, city, state, zipcode].compact.join(', ')
    end
    has_many :services
    # as a requester
    has_many :requester_swipes, class_name: 'Request', foreign_key: :provider_id, dependent: :destroy
    has_many :requesters, through: :requester_swipes, source: :requester
    # # as a provider
    has_many :provider_swipes, class_name: 'Request', foreign_key: :requester_id, dependent: :destroy
    has_many :providers, through: :provider_swipes, source: :provider
    # has_many :requests
    validates :email, uniqueness: true, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
end
