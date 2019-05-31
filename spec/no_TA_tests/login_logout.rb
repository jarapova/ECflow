require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - login and logout account' do
    visit 'https://ectest.trueautomation.io/flow'

    find(:xpath, "//input[@id='username']").set('admin')

    find(:xpath, "//input[@id='password']").set('changeme')

    find(:xpath, "//button[text()='Login']").click

    sleep 4

    find(:xpath, "//span[@class='username']").click

    find(:xpath, "//span[text()='Logout']").click

    sleep 4

  end
end
