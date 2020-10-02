class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :img_url, :street, :city, :state, :zipcode, :latitude, :longitude
  

  has_many :services

end
