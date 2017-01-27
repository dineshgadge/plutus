class TenantPlutusTables < ActiveRecord::Migration
  def change
    # add a tenant column to plutus accounts table.
    add_reference :plutus_accounts, :tenant, polymorphic: true
  end
end
