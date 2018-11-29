class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :followers, :followees, :objectives, :spendings
end
