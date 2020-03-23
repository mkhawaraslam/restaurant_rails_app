ActiveAdmin.register Menu do

  permit_params :name

  config.comments = false

#   index do
#   selectable_column
#   column :name
# end

  #  show do
  #   attributes_table do
  #     row :name
  #     end
  # end

  # controller do

  #   def update
  #     byebug
  #   end

  # end


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
