require 'base64'
require 'cucumber'
require 'watir-webdriver'
require 'page-object'
require 'page-object/page_factory'
require 'logger'
require 'date'
require 'watir-launcher'
require 'require_all'
require 'rspec'
require 'rspec/expectations'
require 'page-object-external-routes'
require 'test_environment'

TestEnvironment.current ||= 'dev' || ENV['ENVIRONMENT'] || ENV['ENV']

PROJECT_ROOT = File.join(File.dirname(__FILE__), '..', '..')
LOGGER = Logger.new(PROJECT_ROOT + "/test_output/logs/#{Date.today}_log.txt", 'daily', 1024000)
LOGGER.datetime_format = '%Y-%m-%d %H:%M:%S'

class CustomWorld
  include PageObject::PageFactory
  include PageObjectExternalRoutes

  attr_accessor :browser_type

  def initialize
    @browser_type = TestEnvironment.browser
  end

end

World do
  CustomWorld.new
end