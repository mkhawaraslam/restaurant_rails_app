ActiveAdmin.register Product do

  permit_params :name, :price, :quantity, :menu_id 

  config.comments = false

  remove_filter :name, :price, :quantity


  
  # show do
  #   attributes_table do
  #     row :name
  #     row :price
  #     end
  # end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :price, :quantity
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :quantity]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
