require 'app_config'
require 'app_config_rails/railtie'

module AppConfigRails

  def self.load_app_config!
    case db_config[:adapter]
    when 'mysql'
      configure_mysql
    when 'postgresql'
      configure_postgres
    when 'sqlite3'
      configure_sqlite
    else
      raise RuntimeError, "AppConfigRails: Database adapter '#{db_config[:adapter]}' not supported; please create an issue if you would like it implemented."
    end
  end

  private

  def self.db_config
    @@__db_config ||= ActiveRecord::Base.connection_config
  end

  # TODO: Finish this once AppConfig supports MySQL.
  def self.configure_mysql
    raise RuntimeError, 'AppConfigRails: MySQL support not yet implemented.'
  end

  def self.configure_postgres
    postgres = {
      host: db_config[:host],
      dbname: db_config[:database],
      table: 'app_config'
    }

    postgres[:port] = db_config[:port] if db_config[:port]

    postgres[:user] = db_config[:username] if db_config[:username]
    postgres[:password] = db_config[:password] if db_config[:password]

    # Catch PG::Error in case the app_config table (migration) hasn't been created.
    begin
      AppConfig.setup!(postgres: postgres)
    rescue ::PG::Error => e
      Rails.logger.warn "WARN: AppConfig table '#{postgres[:table]}' does not exist; migration has not been run."
    end
  end
  
  # TODO: Finish this once AppConfig supports SQLite.
  def self.configure_sqlite
    raise RuntimeError, 'AppConfigRails: SQLite support not yet implemented.'
  end

end
