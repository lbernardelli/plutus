module Plutus
  module Tenancy
    extend ActiveSupport::Concern

    included do
      validates :name, presence: true
      validates :name, presence: true
      validates :tenant, presence: true
      # validates :business, presence: true

      if ActiveRecord::VERSION::MAJOR > 4
        belongs_to :tenant, class_name: Plutus.tenant_class, optional: true
        # belongs_to :business, class_name: Plutus.business_class, optional: true
      else
        belongs_to :tenant, class_name: Plutus.tenant_class
        # belongs_to :business, class_name: Plutus.business_class
      end
    end
  end
end
