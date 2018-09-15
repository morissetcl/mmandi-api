class EmailSerializer < ActiveModel::Serializer
  attributes :id, :email, :content
end
