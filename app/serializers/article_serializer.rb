class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :summerize, :link, :image, :created_at, :tags
end
