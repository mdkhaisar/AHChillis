ActiveAdmin.register EmployeeAmount do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  menu false
  permit_params :amount, :employee_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:amount]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
