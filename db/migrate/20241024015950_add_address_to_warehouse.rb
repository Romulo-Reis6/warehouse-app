# rails g migration add_address_to_warehouse address:string
class AddAddressToWarehouse < ActiveRecord::Migration[7.2]
  def change
    add_column :warehouses, :address, :string
  end
end
