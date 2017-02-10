################# Overview ####################
#Defines methods to handle launching different#
#types of browsers as well as logging out and #
#closing the browser. Also defines methods for#
#sorting through scenario tags.               #
###############################################

require 'selenium/client'
require 'selenium-webdriver'
require 'watir-webdriver'
require 'yaml'

class Utilities

  @@file_offsets = {}
  attr_accessor :browser

  def self.remove_ascii_characters(string, options = {:invalid=>:replace, :undef=>:replace, :replace=>"", :universal_newline=>true})
    result_string = string.encode(Encoding.find('ASCII'), options)
  end

  def self.launch_browser(browser_type)
    case browser_type
      when 'chrome'
        @browser = WatirLauncher.launch_browser :type => :chrome
      when 'firefox'
        @browser = WatirLauncher.launch_browser :type => :firefox, profile: 'default'
      when 'ie'
        profile = Selenium::WebDriver::Remote::Capabilities.ie
        profile['unexpectedAlertBehaviour'] = 'ignore'
        client = Selenium::WebDriver::Remote::Http::Default.new
        client.timeout = 60
        @browser = WatirLauncher.launch_browser :type => :ie, :desired_capabilities => profile, :http_client => client
      else
        raise 'incorrect browser_type was set'
    end
  end

  def self.resize_browser
    @browser.driver.manage.window.maximize
  end

end