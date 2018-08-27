class GemstorySerializer < ActiveModel::Serializer
  attributes :id, :title, :summerize, :link, :image, :created_at
end
