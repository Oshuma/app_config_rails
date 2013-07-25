module AppConfigRails
  class Railtie < Rails::Railtie

    config.to_prepare do
      AppConfigRails.load_app_config!
    end

  end
end
