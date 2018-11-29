class SpendingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user, :rent, :food, :utilities, :clothes, :travel, :other
end
