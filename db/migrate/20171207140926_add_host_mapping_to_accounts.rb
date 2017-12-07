class AddHostMappingToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :host_mapping, :string
  end
end
