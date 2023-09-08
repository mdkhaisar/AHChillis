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
    column 'Actions' do |resource|
         link_to 'Add Amount', new_admin_employee_amount_path(employee_id: resource.id)
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
  show do
    attributes_table do
      row :id
      row :name
      row :year_package
      row "Amounts" do
        panel "Amounts History" do
          table_for employee.employee_amounts do
            column "Date", :created_at
            column :amount
          end
        end
      end
      row :amount_taken
      row :amount_balance
    end
  end  

  form do |f|
    f.inputs do
      f.input :name
      f.input :year_package
    end
    f.actions
  end
end
