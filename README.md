# AppConfigRails

Rails plugin for the [AppConfig](https://github.com/Oshuma/app_config) library.

**Note**: Currently, only ActiveRecord is supported.

## Usage

Add the `app_config_rails` gem to your Rails `Gemfile`.

```ruby
gem 'app_config_rails'
```

And that should be all there is to it.  This plugin was designed to detect the
current Rails environment's database settings and use those.  See the [AppConfig](https://github.com/Oshuma/app_config)
documentation storage specific setup instructions.
