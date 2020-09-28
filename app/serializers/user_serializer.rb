class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :street, :city, :state, :zipcode
<<<<<<< HEAD
  

  has_many :services
=======
>>>>>>> 944512a90dfbd5927184de3ecdc90a8859616ee4
end
