ActiveAdmin.register Article do
  permit_params :title, :summerize, :link, :image
end
