ActiveAdmin.register Gemstory do
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
end
