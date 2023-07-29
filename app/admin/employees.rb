ActiveAdmin.register Employee do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :year_package, :amount_taken, :amount_balance
  
  filter :name

  index download_links: [:csv] do
    selectable_column
    id_column
    column :name
    column :year_package
    column :amount_taken
    column :amount_balance
    column 'Download' do |resource|
         link_to 'Add Taken Amount', employee_update_path(resource, employee: resource)
    end
    actions
  end
  # or
  #
  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
