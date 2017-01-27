module Plutus
  module Tenancy
    extend ActiveSupport::Concern

    included do
      validates :name, presence: true, uniqueness: { scope: [:tenant_type, :tenant_id] }

      belongs_to :tenant, polymorphic: true
    end
  end
end
