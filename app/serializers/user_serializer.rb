class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :followers, :followees, :objectives, :spending
end
