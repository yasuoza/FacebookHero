After do
  @browser.screenshot.save "screenshots/screenshot-#{Time.new.to_i}.png"
end
