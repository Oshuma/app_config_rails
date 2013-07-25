module AppConfigRails
  class Railtie < Rails::Railtie

    initializer "app_config_rails.load_app_config!" do |app|
      AppConfigRails.load_app_config!
    end

  end
end
