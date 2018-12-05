class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :follower_follows, :followee_follows, :followers, :followees, :objectives, :password, :rent, :food, :utilities, :clothes, :travel, :other, :token
end
