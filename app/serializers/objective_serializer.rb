class ObjectiveSerializer < ActiveModel::Serializer
  attributes :id, :user, :name, :current_amount, :total_amount
end
