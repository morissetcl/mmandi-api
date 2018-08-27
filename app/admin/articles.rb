ActiveAdmin.register Article do
  permit_params :title, :summerize, :link, :image, :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :summerize
      f.input :image
      f.input :link
      f.input :created_at, as: :date_picker
    end
    f.actions
  end

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
