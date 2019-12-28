module Fae
  module NavigationConcern
    extend ActiveSupport::Concern

    def structure
      [
        item('Manage', subitems: [
          item('Clients', path: admin_clients_path),
          item('Discounts', path: admin_discounts_path),
          item('Suppliers', path: admin_suppliers_path),
          item('Services', path: admin_services_path),
          item('Products', path: admin_products_path),
          item('Sells', path: admin_sells_path),
        ]),
        item('Marketing', subitems: [
          item('Campaigns', path: admin_campaigns_path)
        ]),
        item('+ Sell', path: '/admin/sells/new')
      ]
    end

  end
end
