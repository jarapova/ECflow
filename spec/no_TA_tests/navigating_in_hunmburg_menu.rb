require 'spec_helper'
require 'securerandom'
random_string = SecureRandom.hex

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - navigating in hunmburg menu' do
    visit 'https://ectest.trueautomation.io/flow'

    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click
    sleep 3
    find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click
    find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-pipeline_runs']").click
    find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click
    sleep 3
    find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-environments']").click
    find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click
    sleep 3
    find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-procedures']").click
    sleep 3

  end
end
