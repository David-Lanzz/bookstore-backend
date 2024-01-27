require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MyApp
  class Application < Rails::Application
    # config.before_initialize do
    #   system("bundle exec rails db:migrate")
    # end

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w(assets tasks))

    config.autoloader = :classic

   # config/application.rb or config/application.rb

   config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*' # or specify the allowed origins
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options],
        expose: ['Authorization'], # expose the Authorization header
        max_age: 0
    end
  end

  end
end
