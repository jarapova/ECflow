require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - Selecting project in control bsr dropdown' do
    visit 'https://ectest.trueautomation.io/flow'
# login
    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click

    sleep 3

    find(:xpath, "//div[@class='project-select-popover at-project-select']").click

    sleep 3

    find(:css, "div.at-project-select-item-picker-2").click

    find(:css, "div.at-project-select-item-picker-5").click

    sleep 3

    find(:css, "div.at-project-select-submit").click

    sleep 3

    find(:xpath, "//div[@class='project-select-popover at-project-select']").click

    sleep 3

    find(:css, ".at-project-select-item-picker-1.ec-project-select-picker__project--selected").click

    find(:css, ".at-project-select-item-picker-2.ec-project-select-picker__project--selected").click

    sleep 3

    find(:css, "div.at-project-select-submit").click

    sleep 5
  end
end
