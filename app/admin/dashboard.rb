# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

   content title: "OverView" do
    div div class: "blank_slate_container", id: "dashboard_default_message" do
      h2 "Farmer Summary (Total In)"
      columns  do
        column  do
          panel "Weight" do
            para Farmer.sum(:weight)
          end
        end
        column do
          panel "Bags" do
            para Farmer.sum(:bags)
          end
        end
        column do
          panel "Amount" do
            para Farmer.sum(:amount)
          end
        end
      end
      h2 "Customer Summary (Total Out)"
       columns do
        column do
          panel "Weight" do
            para Customer.sum(:weight)
          end
        end
        column do
          panel "Bags" do
            para Customer.sum(:bags)
          end
        end
         column do
          panel "Amount" do
            para Customer.sum(:amount)
          end
        end
      end
    end
  end
end
