module Plutus
  module NoTenancy
    extend ActiveSupport::Concern

    included do
      validates :name, presence: true
    end
  end
end
