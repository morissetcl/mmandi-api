ActiveAdmin.register Article do
  permit_params :title, :summerize, :link, :image

  show do
    attributes_table do
      row :title
      row :summerize
      row :image do |article|
        image_tag(article.image.url) if article.image.present?
      end
      row :link
    end
  end
end
