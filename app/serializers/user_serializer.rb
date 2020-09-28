class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :street, :city, :state, :zipcode
<<<<<<< HEAD
<<<<<<< HEAD
  

  has_many :services
=======
>>>>>>> 944512a90dfbd5927184de3ecdc90a8859616ee4
=======
  

  has_many :services

>>>>>>> 9d6b8b784bfdbad3e070644e5c0a22cadc0e11b0
end
