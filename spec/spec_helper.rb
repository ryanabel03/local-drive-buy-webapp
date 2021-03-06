# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'capybara/rspec'
require 'mocha/setup'

Capybara.default_driver = :selenium

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox) 
end

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  config.mock_framework = :mocha
  config.mock_with :mocha

  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.include Devise::TestHelpers, type: :controller
  config.include RequestHelper, type: :feature

  config.before :suite do
    DatabaseCleaner.strategy = :truncation, {except: %w(admins)}
    DatabaseCleaner.clean_with :truncation
    require "#{Rails.root}/db/seeds.rb"
  end

  config.after :each do
    DatabaseCleaner.clean
  end

  config.before :each do
    DatabaseCleaner.start
  end

  # config.use_transactional_fixtures = true

  config.infer_base_class_for_anonymous_controllers = false

  config.order = "random"
end
