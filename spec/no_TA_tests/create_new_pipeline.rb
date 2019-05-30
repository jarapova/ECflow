require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - create new pipeline' do
    visit 'https://ectest.trueautomation.io/flow'
# login
    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click
    sleep 3
    find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click
    find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-pipelines']").click
    find(:xpath, "//span[@class='sds-svg-icon__wrapper sds-svg-icon__wrapper--button-create-new at-add-item-btn").click
    sleep 3
    find(:xpath, "(//div[@class='object-create__type'])[1]").click
    find(:xpath, "//input[@placeholder='Name']").set('pipeline'+SecureRandom.hex(5))
    find(:xpath, "//div[@class='at-select-header-title ec-select-header-title']").click
    sleep 3
    find(:xpath, "(//div[@title='Default'])[6]").click
    find(:xpath, "//div[@class='ec-wizard-btn ec-ok at-ok-btn']").click

  end
end
