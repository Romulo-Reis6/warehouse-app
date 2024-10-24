# rails g migration add_attributes_to_warehouse cep:string description:string
class AddAttributesToWarehouse < ActiveRecord::Migration[7.2]
  def change
    add_column :warehouses, :cep, :string
    add_column :warehouses, :description, :string
  end
end
