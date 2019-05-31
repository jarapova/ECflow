require 'spec_helper'
require 'securerandom'

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - navigating in system administrator menu' do
    visit 'https://ectest.trueautomation.io/flow'

    # login
    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click
    sleep 3

    find(:xpath, "//span[@class='username']").click

    find(:xpath, "//span[text()='Tutorials']").click
    sleep 3

    find(:xpath, "//div[text()='Create an Environment and Tier Map']").click
    sleep 3

    find(:xpath, "//span[@class='coach-start-link at-coachmark-continue']").click

    find(:xpath, "//span[@class='sds-svg-icon__wrapper sds-svg-icon__wrapper--button-create-new at-add-item-btn']").click

    sleep 3
    find(:xpath, "//div[@class='wizard-breadcrumb wizard-breadcrumb--first at-breadcrumb--first-btn']").click

    find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click

    find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-environments']").click

  end
end
