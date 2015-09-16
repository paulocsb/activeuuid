require 'activeuuid'
require 'rails'

module ActiveUUID
  class Railtie < Rails::Railtie
    railtie_name :activeuuid

    # fix mysal2 bug
    config.before_initialize do
      ActiveUUID::Patches.apply!
    end

    config.to_prepare do
      ActiveUUID::Patches.apply!
    end
  end
end
