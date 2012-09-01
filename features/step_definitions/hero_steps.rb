# Full Watir API: http://wtr.rubyforge.org/rdoc/
# Full RSpec API: http://rspec.rubyforge.org/

Given 'I am on the stage' do
  @browser.goto @base_url
end

When /I enter user info/ do |table|
  data = table.rows_hash
  email_field = @browser.text_field(:id => 'email')
  email_field.wait_until_present
  email_field.set(data[:email])

  pass_field = @browser.text_field :id => 'pass'
  pass_field.exists?
  pass_field.set(data[:pass])

  check_box = @browser.checkbox(:name => 'persistent')
  if check_box.set?
    check_box.set(false)
  end
end

Then 'I should click facebook login button' do
  login_link = @browser.label :id => 'loginbutton'
  login_link.wait_until_present
  login_link.click
end

Then 'Find friends waiting for HERO' do
  @browser.goto @base_url

  3.times do
    @browser.link(:text => 'More Stories').wait_until_present

    begin
      @browser.link(:text => 'More Stories').click
      @browser.wait(10)
    rescue
      break
    end
  end
end

Then 'Be a hero!' do
  @browser.buttons(:class => 'like_link').each do |button|
    if button.name.match(/^like/)
      begin
        button.click if rand(10) < 8
      rescue
      end
    end
  end
end
