require 'spec_helper'
require 'securerandom'

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - navigating in system administrator menu' do
    visit 'https://ectest.trueautomation.io/flow'

    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click
    find(:xpath, "//button[@class='username']").click
    find(:xpath, "//span[text()='Tutorials']").click
    sleep 3
    find(:xpath, "//span[@class='sds-svg-icon__wrapper sds-svg-icon__wrapper--button-view-hide']").click
    find(:xpath, "//button[@class='username']").click
    find(:xpath, "//span[text()='Timezone']]").click
    sleep 3
    find(:xpath, "//span[@class='sds-svg-icon__wrapper sds-svg-icon__wrapper--button-view-hide']").click
    find(:xpath, "//button[@class='username']").click
    find(:xpath, "//span[text()='About']").click
    sleep 3
    find(:xpath, "//span[@class='sds-svg-icon__wrapper']").click
    sleep 3

  end
end
