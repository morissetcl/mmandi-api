class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :summerize, :link, :image
end
