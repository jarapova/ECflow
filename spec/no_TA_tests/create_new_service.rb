require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - create new env' do
    visit 'https://ectest.trueautomation.io/flow'

    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click
    find(:xpath, "//div[@class='icon-nav-item at-icon-nav-item-catalogs']").click
    find(:xpath, "//span[@class='sds-svg-icon__wrapper sds-svg-icon__wrapper--button-create-new at-new-catalog at-add-item-btn']").click
    find(:xpath, "(//div[@class='object-create__type'])[1]").click
    find(:xpath, "//input[@placeholder='Name']").set('servCatalog'+SecureRandom.hex(4))
    find(:xpath, "//div[@class='at-select-header-title ec-select-header-title']").click
    sleep 3
    find(:xpath, "(//div[@title='Default'])[6]").click
    find(:xpath, "//div[@class='ec-wizard-btn ec-ok at-ok-btn']").click
    find(:xpath, "//input[@placeholder='Name']").set('Ololo'+SecureRandom.hex(4))
    find(:xpath, "//textarea[@placeholder='Description']").set('text'+SecureRandom.hex(4))
    find(:xpath, "//span[text()='Done']").click

  end
end
