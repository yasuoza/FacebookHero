begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'watir-webdriver'

# Choose your browser
# browser = Watir::Browser.new(:remote, :url => 'http://your_ip:4444/wd/hub', :desired_capabilities => :firefox)
browser = Watir::Browser.new :firefox

Before do
  @base_url = 'http://www.facebook.com/'
  @browser = browser
end

# "after all"
at_exit do
  browser.close
end
