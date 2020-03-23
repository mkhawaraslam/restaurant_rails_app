ActiveAdmin.register User do

  permit_params :email, :password, :password_confirmation, :f_name, :l_nmae, :role

  # config.comments = false
  
  show do
    attributes_table do
      row :f_name
      row :l_name
      row :email
      row :role
    end
  end

  filter :f_name

  form do |f|
    inputs 'User Details' do
      input :f_name, label: 'First Name'
      input :l_name, label: 'Last Name'
      input :email, label: 'Email'
      input :password, label: 'Password'
      input :password_confirmation, label: 'Password Confirmation'
      input :role, label: 'Role'
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :f_name, :l_name, :role
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :f_name, :l_name, :role]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
