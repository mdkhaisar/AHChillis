ActiveAdmin.register Customer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :address, :city, :state, :pincode, :gstin, :item_name, :bags, :weight, :truck_number, :from, :to, :price_per_kg, :amount, :c_gst, :s_gst, :total_amt
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :address, :city, :state, :pincode, :item_name, :bags, :weight, :truck_number, :from, :to, :price_per_kg, :amount, :c_gst, :s_gst, :total_amt]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  filter :name

  index download_links: [:csv] do
    selectable_column
    id_column
    column :created_at
    column :name
    column :address
    column :city
    column :state
    column :pincode
    column "GSTIN", :gstin
    column :item_name
    column :bags
    column :weight
    column :price_per_kg
    column :truck_number
    column :from
    column :to
    column :amount
    column :c_gst
    column :s_gst
    column :total_amt
    column 'Download' do |resource|
         link_to 'Bill', pdf_generate_path(resource, quotation: resource), method: :pdf
    end
    actions
  end

  form do |f|
    f.inputs "Customer Details" do
      f.input :name
      f.input :address
      f.input :city
      f.input :state
      f.input :pincode
      f.input :gstin, label: "GSTIN"
    end
    f.inputs "Item Details" do
      f.input :item_name
      f.input :bags
      f.input :weight
      f.input :price_per_kg
    end
    f.inputs "Travel Details" do
      f.input :truck_number
      f.input :from
      f.input :to
    end
    f.actions
  end
  
end
