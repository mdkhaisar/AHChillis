ActiveAdmin.register Farmer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :item_name, :bags, :weight, :price_per_kg, :apmc_mf, :amount
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :item_name, :bags, :price_per_kg, :apmc_mf, :amount]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  filter :name
   form do |f|
    f.inputs "Farmer Details" do
      f.input :name
      f.input :item_name
      f.input :bags
      f.input :weight
      f.input :price_per_kg
    end
    f.actions
   end

 index download_links: [:csv] do
    selectable_column
    id_column
    column :created_at
    column :name
    column :item_name
    column :bags
    column :weight
    column :price_per_kg
    column :apmc_mf
    column :amount
    actions
 end
end
