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

  
  # fetch('http://localhost:3000/api/v1/users', {
  #   method: 'POST',
  #   headers: {
  #     'Content-Type': 'application/json',
  #     Accept: 'application/json'
  #   },
  #   body: JSON.stringify({
  #     user: {
  #       email: "sylviawoods@gmail.com",
  # first_name: "Hank",
  # last_name: "Thomas",
  #       password: "whatscooking",
       
  #       img_url: "https://upload.wikimedia.org/wikipedia/commons/4/49/Syvia_of_Sylvia%27s_reaturant_N.Y.C_%28cropped%29.jpg"
  #     }
  #   })
  # })
  #   .then(r => r.json())
  #   .then(console.log)
end
