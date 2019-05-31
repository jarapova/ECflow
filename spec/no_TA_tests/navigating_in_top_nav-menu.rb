require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - navigating in top-nav menu' do
    visit 'https://ectest.trueautomation.io/flow'

    # login
    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click

    find(:xpath, "//a[@class='logo at-logo-link']").click

    find(:xpath, "//div[@class='icon-nav-item at-icon-nav-item-my-work']").click


    if page.has_xpath?("//div[@class='icon-nav-item at-icon-nav-item-dashboards']")
        find(:xpath, "//div[@class='con-nav-item at-icon-nav-item-dashboards']").click
    end

    find(:xpath, "//div[@class='icon-nav-item at-icon-nav-item-catalogs']").click

    find(:xpath, "//div[@class='icon-nav-item at-icon-nav-item-releases-calendar']").click

    sleep 3

  end
end
