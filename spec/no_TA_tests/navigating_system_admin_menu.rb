require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - navigating in system administrator menu' do
    visit 'https://ectest.trueautomation.io/flow'

    # login
    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click

    sleep 3
    find(:xpath, "//span[@class='username']").click
    sleep 4
    find(:xpath, "//span[text()='Tutorials']").click
    sleep 4

    find(:xpath, "//span[@class='sds-svg-icon__wrapper sds-svg-icon__wrapper--button-view-hide']").click

    find(:xpath, "//span[@class='username']").click
    sleep 4
    find(:xpath, "//span[text()='Timezone']").click

    sleep 4

    find(:xpath, "//div[@class='ec-wizard-btn ec-cancel at-cancel-btn']").click
    sleep 4

    find(:xpath, "//span[@class='username']").click
    sleep 4

    find(:xpath, "//span[text()='About']").click

    sleep 4

    find(:xpath, "//span[@class='sds-svg-icon__wrapper']").click

    sleep 3

  end
end
